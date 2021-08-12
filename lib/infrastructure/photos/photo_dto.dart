import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/photos/photo.dart';

part 'photo_dto.freezed.dart';
part 'photo_dto.g.dart';

@freezed
abstract class PhotoDto implements _$PhotoDto {
  const PhotoDto._();

  const factory PhotoDto({
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _PhotoDto;

  factory PhotoDto.fromDomain(Photo photo) {
    return PhotoDto(
      albumId: photo.albumId,
      id: photo.id,
      title: photo.title,
      url: photo.url,
      thumbnailUrl: photo.thumbnailUrl,
    );
  }

  Photo toDomain() {
    return Photo(
      albumId: albumId,
      id: id,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
  }

  factory PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoDtoFromJson(json);
}
