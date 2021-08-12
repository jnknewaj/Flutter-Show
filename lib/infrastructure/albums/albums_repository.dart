import 'dart:io';

import 'package:json_parsing/domain/albums/album.dart';
import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/albums/i_albums_repository.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/infrastructure/albums/albums_remote_datasource.dart';

class AlbumsRepository implements IAlbumsRepository {
  final IAlbumsRemoteDataSource remoteDataSource;

  AlbumsRepository(this.remoteDataSource);

  @override
  Future<Either<Failures, List<Album>>> getAllAlbums() async {
    try {
      final albums = await remoteDataSource.fetchAllAlbums();
      return right(albums);
    } on ServerException {
      return left(const Failures.serverFailure());
    } on SocketException {
      return left(const Failures.noInternet());
    } on NoAlbumsException {
      return left(const Failures.noAlbums());
    }
  }
}
