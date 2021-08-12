import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_parsing/domain/posts/post.dart';
import 'package:json_parsing/infrastructure/posts/dataSources/post_local_data_source.dart';

void registerHiveAdapters() {
  Hive.registerAdapter(PostAdapter());
}

Future<void> openHiveBoxes() async {
  await Hive.openBox(boxPosts);
}
