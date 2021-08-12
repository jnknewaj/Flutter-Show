part of 'pho_watcher_bloc.dart';

@freezed
class PhoWatcherEvent with _$PhoWatcherEvent {
  const factory PhoWatcherEvent.started() = _Started;
}