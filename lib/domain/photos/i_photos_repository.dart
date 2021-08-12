import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/photos/photo.dart';

abstract class IPhotosRepository {
  Future<Either<Failures, List<Photo>>> getPhotosLazily(int startIndex);
}
