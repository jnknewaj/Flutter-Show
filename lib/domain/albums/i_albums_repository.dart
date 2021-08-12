import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/albums/album.dart';
import 'package:json_parsing/domain/core/failures.dart';

abstract class IAlbumsRepository {
  Future<Either<Failures, List<Album>>> getAllAlbums();
}
