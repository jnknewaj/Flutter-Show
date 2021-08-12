import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/application/albums/albums_watcher_state.dart';
import 'package:json_parsing/domain/albums/i_albums_repository.dart';

class AlbumsNotifier extends StateNotifier<AlbumsWatcherState> {
  final IAlbumsRepository repository;
  AlbumsNotifier(this.repository) : super(const AlbumsWatcherState.initial());

  Future<void> watchAllAlbums() async {
    state = const AlbumsWatcherState.loading();
    final result = await repository.getAllAlbums();

    state = result.fold(
      (l) => AlbumsWatcherState.failedToLoad(l),
      (r) => AlbumsWatcherState.loaded(r),
    );
  }
}
