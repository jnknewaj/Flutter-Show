import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/comments/comment.dart';
import 'package:json_parsing/domain/comments/i_comment_repository.dart';
import 'package:json_parsing/domain/core/failures.dart';

part 'comments_watcher_event.dart';
part 'comments_watcher_state.dart';
part 'comments_watcher_bloc.freezed.dart';

@injectable
class CommentsWatcherBloc
    extends Bloc<CommentsWatcherEvent, CommentsWatcherState> {
  final ICommentRepository repository;

  CommentsWatcherBloc(this.repository) : super(CommentsWatcherState.initial());

  @override
  Stream<CommentsWatcherState> mapEventToState(
    CommentsWatcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        if (state.hasReachedMax) yield state;

        if (state.status == CommentStatus.initial) {
          final commentsEither =
              await repository.getCommentsLazily(startIndex: 0);
          yield commentsEither.fold(
            (failure) => state.copyWith(
              status: CommentStatus.failure,
              failures: failure,
            ),
            // No need to set failure status here, cz it'd be null from initial state
            (comments) => state.copyWith(
              status: CommentStatus.success,
              comments: comments,
              hasReachedMax: false,
            ),
          );
        }

        final commentsEither = await repository.getCommentsLazily(
            startIndex: state.comments.length);
        yield commentsEither.fold(
          (failure) => state.copyWith(failures: failure),
          (comments) {
            if (comments.isEmpty) {
              return state.copyWith(
                hasReachedMax: true,
                failures: null,
              );
            } else {
              return state.copyWith(
                status: CommentStatus.success,
                comments: List.of(state.comments)..addAll(comments),
                hasReachedMax: false,
                failures: null,
              );
            }
          },
        );
      },
    );
  }
}
