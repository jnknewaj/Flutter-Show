import 'package:flutter/material.dart';
import 'package:json_parsing/domain/comments/comment.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    Key? key,
    required this.comment,
    required this.index,
  }) : super(key: key);

  final Comment comment;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('${index}'),
      ),
      title: Text(comment.email),
      subtitle: Text(comment.body),
    );
  }
}
