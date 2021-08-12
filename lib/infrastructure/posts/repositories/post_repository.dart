import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/core/failures.dart';
import 'package:json_parsing/domain/posts/i_post_repository.dart';
import 'package:json_parsing/domain/posts/post.dart';
import 'package:json_parsing/infrastructure/posts/dataSources/post_local_data_source.dart';
import 'package:json_parsing/infrastructure/posts/dataSources/post_remote_data_source.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final IPostRemoteDataSource remoteDataSource;
  final IPostLocalDataSource localDataSource;

  PostRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failures, List<Post>>> getAllPosts() async {
    try {
      final posts = await remoteDataSource.fetchAllPosts();
      localDataSource.cachePosts(posts);
      return right(posts);
    } on ServerException {
      return left(const Failures.serverFailure());
    } on SocketException {
      // 1st checking if there is any cached data.
      // If not, then going back to the original exception
      try {
        final posts = localDataSource.fetchCachedPosts();
        return right(posts);
      } on CacheException {
        return left(const Failures.noInternet());
      }
    } on NoPostsException {
      return left(const Failures.noPosts());
    }
  }

  @override
  Future<Either<Failures, List<Post>>> getSomePosts({
    required int startIndex,
  }) async {
    try {
      final posts = await remoteDataSource.fetchSomePost(
        startIndex: startIndex,
      );
      localDataSource.cachePosts(posts);
      return right(posts);
    } on ServerException {
      return left(const Failures.serverFailure());
    } on SocketException {
      // 1st checking if there is any cached data.
      // If not, then going back to the original exception
      try {
        final posts = localDataSource.fetchCachedPosts();
        return right(posts);
      } on CacheException {
        return left(const Failures.noInternet());
      }
    } on NoPostsException {
      return right([]);
    }
  }
}
