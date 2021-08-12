import 'package:dartz/dartz.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/posts/post.dart';

abstract class IPostRepository {
  Future<Either<Failures, List<Post>>> getAllPosts();
  Future<Either<Failures, List<Post>>> getSomePosts({required int startIndex});
}
