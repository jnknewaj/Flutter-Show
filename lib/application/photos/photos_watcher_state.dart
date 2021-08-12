import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/photos/photo.dart';

part 'photos_watcher_state.freezed.dart';

enum PhotosWatcherStatus { initial, success, failure }

@freezed
abstract class PhotosWatcherState with _$PhotosWatcherState {
  const factory PhotosWatcherState({
    required PhotosWatcherStatus status,
    required List<Photo> photos,
    required bool hasReachedMax,
    required Failures? failures,
  }) = _PhotosWatcherState;

  factory PhotosWatcherState.initial() => PhotosWatcherState(
        status: PhotosWatcherStatus.initial,
        photos: [],
        hasReachedMax: false,
        failures: null,
      );
}
