import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  @HiveType(typeId: 0, adapterName: 'PostAdapter')
  const factory Post({
    @HiveField(0) required int userId,
    @HiveField(1) required int id,
    @HiveField(2) required String title,
    @HiveField(3) required String body,
  }) = _Post;
}
