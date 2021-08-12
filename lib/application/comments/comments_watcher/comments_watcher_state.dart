part of 'comments_watcher_bloc.dart';

enum CommentStatus { initial, success, failure }

@freezed
class CommentsWatcherState with _$CommentsWatcherState {
  const factory CommentsWatcherState({
    required CommentStatus status,
    required List<Comment> comments,
    required bool hasReachedMax,
    required Failures? failures,
  }) = _Initial;

  factory CommentsWatcherState.initial() => CommentsWatcherState(
        status: CommentStatus.initial,
        comments: [],
        hasReachedMax: false,
        failures: null,
      );
}
