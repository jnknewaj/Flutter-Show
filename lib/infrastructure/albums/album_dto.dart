import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/albums/album.dart';

part 'album_dto.freezed.dart';
part 'album_dto.g.dart';

@freezed
abstract class AlbumDto implements _$AlbumDto {
  const AlbumDto._();

  const factory AlbumDto({
    required int userId,
    required int id,
    required String title,
  }) = _AlbumDto;

  factory AlbumDto.fromDomain(Album album) {
    return AlbumDto(
      userId: album.userId,
      id: album.id,
      title: album.title,
    );
  }

  Album toDomain() {
    return Album(
      userId: userId,
      id: id,
      title: title,
    );
  }

  factory AlbumDto.fromJson(Map<String, dynamic> json) =>
      _$AlbumDtoFromJson(json);
}
