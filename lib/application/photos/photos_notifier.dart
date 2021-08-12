import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/application/photos/photos_watcher_state.dart';
import 'package:json_parsing/domain/photos/i_photos_repository.dart';

class PhotosNotifier extends StateNotifier<PhotosWatcherState> {
  final IPhotosRepository repository;
  PhotosNotifier(this.repository) : super(PhotosWatcherState.initial());

  Future<void> watchPhotosLazily() async {
    if (state.hasReachedMax) {
      state = state;
    }

    if (state.status == PhotosWatcherStatus.initial) {
      final photosEither = await repository.getPhotosLazily(0);
      photosEither.fold(
        (failure) => state = state.copyWith(
          status: PhotosWatcherStatus.failure,
          failures: failure,
        ),
        // No need to set failure status here, cz it'd be null from initial state
        (photos) {
          print('Length: ${photos.length}');
          state = state.copyWith(
            status: PhotosWatcherStatus.success,
            photos: photos,
            hasReachedMax: false,
          );
        },
      );
    }
    final photosEither = await repository.getPhotosLazily(state.photos.length);

    photosEither.fold(
      (failure) => state = state.copyWith(failures: failure),
      (photos) {
        if (photos.isEmpty) {
          state = state.copyWith(hasReachedMax: true, failures: null);
        } else {
          state = state.copyWith(
            status: PhotosWatcherStatus.success,
            photos: List.of(state.photos)..addAll(photos),
            hasReachedMax: false,
            failures: null,
          );
        }
      },
    );
  }
}
