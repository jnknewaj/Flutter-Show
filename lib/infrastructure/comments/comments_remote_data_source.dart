import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/comments/comment.dart';
import 'package:http/http.dart' as http;
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/infrastructure/comments/comment_dto.dart';
import 'package:json_parsing/res/constants/constants.dart';

const int commentsLimit = 10;

abstract class ICommentsRemoteDataSource {
  /// Throws [ServerException], [SocketException] & [NoCommentsExceptions]
  Future<List<Comment>> getCommentsLazily({required int startIndex});
}

@LazySingleton(as: ICommentsRemoteDataSource)
class CommentsRemoteDataSource implements ICommentsRemoteDataSource {
  final http.Client client;
  CommentsRemoteDataSource(this.client);

  @override
  Future<List<Comment>> getCommentsLazily({required int startIndex}) async {
    try {
      final url =
          '${baseUrl}/comments?_start=$startIndex&_limit=$commentsLimit';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List commentsList = json.decode(response.body) as List;

        if (commentsList.isEmpty) {
          throw NoCommentsException();
        }

        return commentsList
            .map((e) => CommentDto.fromJson(e).toDomain())
            .toList();
      } else {
        print('The Exception : ${response.body}');
        throw ServerException();
      }
    } on SocketException {
      throw SocketException('No Internet Connection');
    } on ServerException {
      throw ServerException();
    } on NoCommentsException {
      throw NoCommentsException();
    }
  }
}
