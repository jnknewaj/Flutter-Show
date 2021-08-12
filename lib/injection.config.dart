// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i12;

import 'application/comments/comments_watcher/comments_watcher_bloc.dart'
    as _i19;
import 'application/photos/bloc/pho_watcher_bloc.dart' as _i14;
import 'application/post/blocs/lazyPostsTwo/lazypoststwo_bloc.dart' as _i13;
import 'application/post/blocs/posts/posts_bloc.dart' as _i15;
import 'domain/comments/i_comment_repository.dart' as _i16;
import 'domain/core/network_info.dart' as _i18;
import 'domain/photos/i_photos_repository.dart' as _i6;
import 'domain/posts/i_post_repository.dart' as _i10;
import 'infrastructure/comments/comments_remote_data_source.dart' as _i4;
import 'infrastructure/comments/comments_repository.dart' as _i17;
import 'infrastructure/core/third_party_packages_injectable_module.dart'
    as _i20;
import 'infrastructure/photos/photos_remote_data_source.dart' as _i5;
import 'infrastructure/photos/photos_repository.dart' as _i7;
import 'infrastructure/posts/dataSources/post_local_data_source.dart' as _i8;
import 'infrastructure/posts/dataSources/post_remote_data_source.dart' as _i9;
import 'infrastructure/posts/repositories/post_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyPackagesInjectableModule =
      _$ThirdPartyPackagesInjectableModule();
  gh.lazySingleton<_i3.Client>(
      () => thirdPartyPackagesInjectableModule.httpClient);
  gh.lazySingleton<_i4.ICommentsRemoteDataSource>(
      () => _i4.CommentsRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i5.IPhotosRemoteDataSource>(
      () => _i5.PhotosRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i6.IPhotosRepository>(
      () => _i7.PhotosRepository(get<_i5.IPhotosRemoteDataSource>()));
  gh.lazySingleton<_i8.IPostLocalDataSource>(() => _i8.PostLocalDataSource());
  gh.lazySingleton<_i9.IPostRemoteDataSource>(
      () => _i9.PostRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i10.IPostRepository>(() => _i11.PostRepository(
      remoteDataSource: get<_i9.IPostRemoteDataSource>(),
      localDataSource: get<_i8.IPostLocalDataSource>()));
  gh.lazySingleton<_i12.InternetConnectionChecker>(
      () => thirdPartyPackagesInjectableModule.internetConnectionChecker);
  gh.factory<_i13.LazypoststwoBloc>(
      () => _i13.LazypoststwoBloc(get<_i10.IPostRepository>()));
  gh.factory<_i14.PhoWatcherBloc>(
      () => _i14.PhoWatcherBloc(get<_i6.IPhotosRepository>()));
  gh.factory<_i15.PostsBloc>(() => _i15.PostsBloc(get<_i10.IPostRepository>()));
  gh.lazySingleton<_i16.ICommentRepository>(
      () => _i17.CommentsRepository(get<_i4.ICommentsRemoteDataSource>()));
  gh.lazySingleton<_i18.INetworkInfo>(
      () => _i18.NetworkInfo(get<_i12.InternetConnectionChecker>()));
  gh.factory<_i19.CommentsWatcherBloc>(
      () => _i19.CommentsWatcherBloc(get<_i16.ICommentRepository>()));
  return get;
}

class _$ThirdPartyPackagesInjectableModule
    extends _i20.ThirdPartyPackagesInjectableModule {}
