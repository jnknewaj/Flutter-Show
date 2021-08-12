import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/failures.dart';

import 'package:json_parsing/domain/posts/i_post_repository.dart';
import 'package:json_parsing/domain/posts/post.dart';

part 'lazypoststwo_bloc.freezed.dart';
part 'lazypoststwo_event.dart';
part 'lazypoststwo_state.dart';

@injectable
class LazypoststwoBloc extends Bloc<LazypoststwoEvent, LazypoststwoState> {
  final IPostRepository repository;
  LazypoststwoBloc(
    this.repository,
  ) : super(LazypoststwoState.initial());

  @override
  Stream<LazypoststwoState> mapEventToState(
    LazypoststwoEvent event,
  ) async* {
    if (state.hasReachedMax) yield state;
    if (state.status == PostStatus.initial) {
      final postsEither = await repository.getSomePosts(startIndex: 0);
      yield postsEither.fold(
        (failure) => state.copyWith(
          status: PostStatus.failure,
          failures: failure,
        ),
        // No need to set failure status here, cz it'd be null from initial state
        (posts) => state.copyWith(
          status: PostStatus.success,
          posts: posts,
          hasReachedMax: false,
        ),
      );
    }
    final postsEither = await repository.getSomePosts(
      startIndex: state.posts.length,
    );

    yield postsEither.fold(
      (failure) => state.copyWith(failures: failure),
      (posts) {
        if (posts.isEmpty) {
          return state.copyWith(
            hasReachedMax: true,
            failures: null,
          );
        } else {
          return state.copyWith(
            status: PostStatus.success,
            posts: List.of(state.posts)..addAll(posts),
            hasReachedMax: false,
            failures: null,
          );
        }
      },
    );
  }
}
