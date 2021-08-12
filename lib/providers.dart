import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/application/albums/albums_notifier.dart';
import 'package:json_parsing/application/albums/albums_watcher_state.dart';
import 'package:json_parsing/application/photos/photos_notifier.dart';
import 'package:json_parsing/application/photos/photos_watcher_state.dart';
import 'package:json_parsing/application/post/blocs/posts/posts_bloc.dart';
import 'package:json_parsing/application/post/notifiers/posts_notifier.dart';
import 'package:json_parsing/domain/albums/i_albums_repository.dart';
import 'package:json_parsing/domain/photos/i_photos_repository.dart';
import 'package:json_parsing/domain/posts/i_post_repository.dart';
import 'package:json_parsing/infrastructure/albums/albums_remote_datasource.dart';
import 'package:json_parsing/infrastructure/albums/albums_repository.dart';
import 'package:json_parsing/infrastructure/photos/photos_remote_data_source.dart';
import 'package:json_parsing/infrastructure/photos/photos_repository.dart';
import 'package:json_parsing/infrastructure/posts/dataSources/post_local_data_source.dart';
import 'package:json_parsing/infrastructure/posts/dataSources/post_remote_data_source.dart';
import 'package:json_parsing/infrastructure/posts/repositories/post_repository.dart';
import 'package:http/http.dart' as http;

/**
 * **************************************************************************
 * **************************************************************************
 * For Posts Module
 */

// http
final httpClientProvider = Provider<http.Client>((ref) => http.Client());

// posts remote datasource
final postsRemoteDataSourceProvider = Provider<IPostRemoteDataSource>(
  (ref) => PostRemoteDataSource(ref.watch(httpClientProvider)),
);

// posts local datasource
final postsLocalDataSourceProvider = Provider((ref) => PostLocalDataSource());

// posts repository
final postsRepositoryProvider = Provider<IPostRepository>(
  (ref) => PostRepository(
    remoteDataSource: ref.watch(postsRemoteDataSourceProvider),
    localDataSource: ref.watch(postsLocalDataSourceProvider),
  ),
);

// posts state notifier
final postsNotifierProvider = StateNotifierProvider<PostsNotifier, PostsState>(
  (ref) => PostsNotifier(ref.watch(postsRepositoryProvider)),
);

/**
 * -----------------------------------------------------------------------
 * -----------------------------------------------------------------------
 */

/**
 * **************************************************************************
 * **************************************************************************
 * For Albums Module
 */

// data source provider
final albumsRemoteDataSourceProvider = Provider<IAlbumsRemoteDataSource>(
  (ref) => AlbumRemoteDataSource(ref.watch(httpClientProvider)),
);

// repository provider
final albumsRepositoryProvider = Provider<IAlbumsRepository>(
  (ref) => AlbumsRepository(ref.watch(albumsRemoteDataSourceProvider)),
);

// notifier provider
final albumsNotifierProvider =
    StateNotifierProvider<AlbumsNotifier, AlbumsWatcherState>(
  (ref) => AlbumsNotifier(
    ref.watch(albumsRepositoryProvider),
  ),
);

/**
 * -----------------------------------------------------------------------
 * -----------------------------------------------------------------------
 */

/**
 * **************************************************************************
 * **************************************************************************
 * For Photos Module
 */

// data source
final photosRemoteDataSourceProvider = Provider<IPhotosRemoteDataSource>(
  (ref) => PhotosRemoteDataSource(ref.watch(httpClientProvider)),
);

// photos repository
final photosRepositoryProvider = Provider<IPhotosRepository>(
  (ref) => PhotosRepository(ref.watch(photosRemoteDataSourceProvider)),
);

// notifier
final photosNotifierProvider =
    StateNotifierProvider<PhotosNotifier, PhotosWatcherState>(
  (ref) => PhotosNotifier(
    ref.watch(photosRepositoryProvider),
  ),
);
