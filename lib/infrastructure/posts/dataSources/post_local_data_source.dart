import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:json_parsing/domain/core/exceptions.dart';
import 'package:json_parsing/domain/posts/post.dart';

const String boxPosts = 'boxPosts';
const String keyPosts = 'keyPosts';

abstract class IPostLocalDataSource {
  Future<void> cachePosts(List<Post> posts);

  /// Throws [CacheException] is there is no cached data
  List<Post> fetchCachedPosts();
}

@LazySingleton(as: IPostLocalDataSource)
class PostLocalDataSource implements IPostLocalDataSource {
  @override
  Future<void> cachePosts(List<Post> posts) async {
    await Hive.box(boxPosts).put(keyPosts, posts);
    return;
  }

  @override
  List<Post> fetchCachedPosts() {
    final List<dynamic>? postsData = Hive.box(boxPosts).get(keyPosts);

    final List<Post>? posts = postsData?.map((s) => s as Post).toList();

    if (posts == null) {
      throw CacheException();
    } else {
      return posts;
    }
  }
}
