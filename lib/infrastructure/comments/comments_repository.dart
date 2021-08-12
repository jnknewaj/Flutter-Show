import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/comments/comment.dart';
import 'package:json_parsing/domain/comments/i_comment_repository.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/infrastructure/comments/comments_remote_data_source.dart';

@LazySingleton(as: ICommentRepository)
class CommentsRepository implements ICommentRepository {
  final ICommentsRemoteDataSource remoteDataSource;

  CommentsRepository(this.remoteDataSource);

  @override
  Future<Either<Failures, List<Comment>>> getCommentsLazily({
    required int startIndex,
  }) async {
    try {
      final comments =
          await remoteDataSource.getCommentsLazily(startIndex: startIndex);
      return right(comments);
    } on ServerException {
      return left(const Failures.serverFailure());
    } on SocketException {
      return left(const Failures.noInternet());
    } on NoCommentsException {
      return left(const Failures.noComments());
    }
  }
}
