import 'package:flutter/material.dart';
import 'package:json_parsing/domain/posts/post.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: CircleAvatar(
        child: Text('${post.id}',
            style: textTheme.caption!.copyWith(color: Colors.white)),
      ),
      title: Text(post.title),
      subtitle: Text(post.body),
      dense: true,
      contentPadding: const EdgeInsets.all(8.0),
    );
  }
}
