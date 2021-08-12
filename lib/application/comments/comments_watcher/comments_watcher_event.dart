part of 'comments_watcher_bloc.dart';

@freezed
class CommentsWatcherEvent with _$CommentsWatcherEvent {
  const factory CommentsWatcherEvent.started() = _Started;
}
