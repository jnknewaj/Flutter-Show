import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/comments/comment.dart';
import 'package:json_parsing/domain/core/failures.dart';

abstract class ICommentRepository {
  Future<Either<Failures, List<Comment>>> getCommentsLazily(
      {required int startIndex});
}
