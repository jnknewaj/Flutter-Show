import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/posts/post.dart';
import 'package:http/http.dart' as http;
import 'package:json_parsing/infrastructure/posts/models/post_dto.dart';
import 'package:json_parsing/res/constants/constants.dart';

const int postLimit = 10;

abstract class IPostRemoteDataSource {
  /// Throws [ServerException], [SocketException] & [NoPostsException]
  ///
  /// Returns list of [Post]
  Future<List<Post>> fetchAllPosts();

  /// Throws [ServerException], [SocketException] & [NoPostsException]
  ///
  /// Returns list of [Post]
  Future<List<Post>> fetchSomePost({required int startIndex});
}

@LazySingleton(as: IPostRemoteDataSource)
class PostRemoteDataSource implements IPostRemoteDataSource {
  final http.Client client;

  PostRemoteDataSource(this.client);

  @override
  Future<List<Post>> fetchAllPosts() async {
    try {
      final posts = await _fetchPosts();
      return posts;
    } on SocketException {
      throw const SocketException('No Internet Connection');
    } on ServerException {
      throw ServerException();
    } on NoPostsException {
      throw NoPostsException();
    }
  }

  @override
  Future<List<Post>> fetchSomePost({
    required int startIndex,
  }) async {
    try {
      final posts = await _fetchPosts(startIndex: startIndex, limit: postLimit);
      return posts;
    } on SocketException {
      throw const SocketException('No Internet Connection');
    } on ServerException {
      throw ServerException();
    } on NoPostsException {
      throw NoPostsException();
    }
  }

  Future<List<Post>> _fetchPosts({
    int? startIndex,
    int? limit,
  }) async {
    try {
      String url;
      if (startIndex == null && limit == null) {
        // ignore: unnecessary_brace_in_string_interps
        url = '${baseUrl}/posts';
      } else {
        // ignore: unnecessary_brace_in_string_interps
        url = '${baseUrl}/posts?_start=$startIndex&_limit=$limit';
      }
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List postList = json.decode(response.body) as List;

        if (postList.isEmpty) {
          throw NoPostsException();
        }

        return postList.map((e) => PostDto.fromJson(e).toDomain()).toList();
      } else {
        print('The Exception : ${response.body}');
        throw ServerException();
      }
    } on SocketException {
      throw const SocketException('No Internet Connection');
    } on NoPostsException {
      throw NoPostsException();
    }
  }
}
