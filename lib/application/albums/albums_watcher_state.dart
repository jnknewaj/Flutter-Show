import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/albums/album.dart';
import 'package:json_parsing/domain/core/failures.dart';

part 'albums_watcher_state.freezed.dart';

@freezed
abstract class AlbumsWatcherState with _$AlbumsWatcherState {
  const factory AlbumsWatcherState.initial() = _Initial;
  const factory AlbumsWatcherState.loading() = _Loading;
  const factory AlbumsWatcherState.loaded(List<Album> albums) = _Loaded;
  const factory AlbumsWatcherState.failedToLoad(Failures failures) =
      _FailedToLoad;
}
