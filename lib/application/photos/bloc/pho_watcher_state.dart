part of 'pho_watcher_bloc.dart';

enum PhoWatcherStatus { initial, success, failure }

@freezed
class PhoWatcherState with _$PhoWatcherState {
  const factory PhoWatcherState({
    required PhoWatcherStatus status,
    required List<Photo> photos,
    required bool hasReachedMax,
    required Failures? failures,
  }) = _PhoWatcherState;

  factory PhoWatcherState.initial() => PhoWatcherState(
        status: PhoWatcherStatus.initial,
        photos: [],
        hasReachedMax: false,
        failures: null,
      );
}
