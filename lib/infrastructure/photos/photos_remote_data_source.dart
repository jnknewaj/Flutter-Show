import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/photos/photo.dart';
import 'package:http/http.dart' as http;
import 'package:json_parsing/infrastructure/photos/photo_dto.dart';
import 'package:json_parsing/res/constants/constants.dart';

const int photosLimit = 500;

abstract class IPhotosRemoteDataSource {
  Future<List<Photo>> fetchPhotosLazily(int startIndex);
}

@LazySingleton(as: IPhotosRemoteDataSource)
class PhotosRemoteDataSource implements IPhotosRemoteDataSource {
  final http.Client client;

  PhotosRemoteDataSource(this.client);

  @override
  Future<List<Photo>> fetchPhotosLazily(int startIndex) async {
    try {
      final url = '${baseUrl}/photos?_start=$startIndex&_limit=$photosLimit';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List photosList = json.decode(response.body) as List;

        if (photosList.isEmpty) {
          throw NoPhotosException();
        }

        return photosList.map((e) => PhotoDto.fromJson(e).toDomain()).toList();
      } else {
        print('The Exception : ${response.body}');
        throw ServerException();
      }
    } on SocketException {
      throw SocketException('No Internet Connection');
    } on ServerException {
      throw ServerException();
    } on NoPhotosException {
      throw NoPhotosException();
    }
  }
}
