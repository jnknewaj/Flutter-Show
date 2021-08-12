import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_parsing/domain/comments/comment.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
abstract class CommentDto implements _$CommentDto {
  const CommentDto._();

  const factory CommentDto({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _CommentDto;

  factory CommentDto.fromDomain(Comment comment) {
    return CommentDto(
      postId: comment.postId,
      id: comment.id,
      name: comment.name,
      email: comment.email,
      body: comment.body,
    );
  }

  Comment toDomain() {
    return Comment(
      postId: postId,
      id: id,
      name: name,
      email: email,
      body: body,
    );
  }

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);
}
