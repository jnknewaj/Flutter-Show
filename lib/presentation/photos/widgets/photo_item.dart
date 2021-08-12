import 'package:flutter/material.dart';
import 'package:json_parsing/domain/photos/photo.dart';

class PhotoItem extends StatelessWidget {
  final Photo photo;
  final int index;

  const PhotoItem({
    Key? key,
    required this.photo,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(photo.thumbnailUrl),
      ),
      title: Text(photo.title),
      trailing: Text(index.toString()),
    );
  }
}
