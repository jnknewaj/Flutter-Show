import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/posts/post.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
abstract class PostDto implements _$PostDto {
  const PostDto._();

  const factory PostDto({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostDto;

  PostDto fromDomain(Post post) {
    return PostDto(
      userId: post.userId,
      id: post.id,
      title: post.title,
      body: post.body,
    );
  }

  Post toDomain() {
    return Post(
      userId: userId,
      id: id,
      title: title,
      body: body,
    );
  }

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
