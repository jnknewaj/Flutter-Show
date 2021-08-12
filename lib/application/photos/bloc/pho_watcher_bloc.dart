import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/photos/i_photos_repository.dart';
import 'package:json_parsing/domain/photos/photo.dart';

part 'pho_watcher_bloc.freezed.dart';
part 'pho_watcher_event.dart';
part 'pho_watcher_state.dart';

@injectable
class PhoWatcherBloc extends Bloc<PhoWatcherEvent, PhoWatcherState> {
  final IPhotosRepository repository;
  PhoWatcherBloc(
    this.repository,
  ) : super(PhoWatcherState.initial());

  @override
  Stream<PhoWatcherState> mapEventToState(
    PhoWatcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        if (state.hasReachedMax) yield state;
        if (state.status == PhoWatcherStatus.initial) {
          final postsEither = await repository.getPhotosLazily(0);
          yield postsEither.fold(
            (failure) => state.copyWith(
              status: PhoWatcherStatus.failure,
              failures: failure,
            ),
            // No need to set failure status here, cz it'd be null from initial state
            (photos) => state.copyWith(
              status: PhoWatcherStatus.success,
              photos: photos,
              hasReachedMax: false,
            ),
          );
        }
        final photosEither = await repository.getPhotosLazily(
          state.photos.length,
        );

        yield photosEither.fold(
          (failure) => state.copyWith(failures: failure),
          (posts) {
            if (posts.isEmpty) {
              return state.copyWith(
                hasReachedMax: true,
                failures: null,
              );
            } else {
              return state.copyWith(
                status: PhoWatcherStatus.success,
                photos: List.of(state.photos)..addAll(posts),
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
