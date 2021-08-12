import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/photos/i_photos_repository.dart';
import 'package:json_parsing/domain/photos/photo.dart';
import 'package:json_parsing/infrastructure/photos/photos_remote_data_source.dart';

@LazySingleton(as: IPhotosRepository)
class PhotosRepository implements IPhotosRepository {
  final IPhotosRemoteDataSource remoteDataSource;

  PhotosRepository(this.remoteDataSource);

  @override
  Future<Either<Failures, List<Photo>>> getPhotosLazily(int startIndex) async {
    try {
      final photos = await remoteDataSource.fetchPhotosLazily(startIndex);
      return right(photos);
    } on ServerException {
      return left(const Failures.serverFailure());
    } on SocketException {
      return left(const Failures.noInternet());
    } on NoPhotosException {
      return left(const Failures.noPhotos());
    } catch (e) {
      print('object : ${e.toString()}');
      return left(const Failures.serverFailure());
    }
  }
}
