import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/posts/i_post_repository.dart';
import 'package:json_parsing/domain/posts/post.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final IPostRepository repository;
  PostsBloc(this.repository) : super(const PostsState.initial());

  @override
  Stream<PostsState> mapEventToState(
    PostsEvent event,
  ) async* {
    yield* event.map(
      getAllPost: (e) async* {
        yield const PostsState.loading();
        final result = await repository.getAllPosts();
        yield result.fold(
          (l) => PostsState.failedToLoad(l),
          (r) => PostsState.loaded(r),
        );
      },
    );
  }
}
