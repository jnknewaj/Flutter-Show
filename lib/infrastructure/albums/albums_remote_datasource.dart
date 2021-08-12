import 'dart:convert';
import 'dart:io';

import 'package:json_parsing/domain/albums/album.dart';
import 'package:http/http.dart' as http;
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/infrastructure/albums/album_dto.dart';
import 'package:json_parsing/res/constants/constants.dart';

const int albumsLimit = 10;

abstract class IAlbumsRemoteDataSource {
  /// Throws [ServerException], [SocketException] & [NoCommentsExceptions]
  Future<List<Album>> fetchAllAlbums();
}

class AlbumRemoteDataSource implements IAlbumsRemoteDataSource {
  final http.Client client;

  AlbumRemoteDataSource(this.client);

  @override
  Future<List<Album>> fetchAllAlbums() async {
    try {
      final url = '${baseUrl}/albums';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List albumsList = json.decode(response.body) as List;

        if (albumsList.isEmpty) {
          throw NoAlbumsException();
        }

        return albumsList.map((e) => AlbumDto.fromJson(e).toDomain()).toList();
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
