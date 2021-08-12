import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:json_parsing/presentation/albums/pages/albums_page.dart';
import 'package:json_parsing/presentation/comments/pages/comments_page.dart';
import 'package:json_parsing/presentation/home/widgets/super_rich_text.dart';
import 'package:json_parsing/presentation/photos/pages/pho_page.dart';
import 'package:json_parsing/presentation/photos/pages/photos_page.dart';
import 'package:json_parsing/presentation/posts/pages/lazy_post_page.dart';
import 'package:json_parsing/presentation/posts/pages/posts_in_riverpod_page.dart';
import 'package:json_parsing/presentation/posts/pages/posts_page.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Show')),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          // posts || using bloc || not lazy || cached
          ListTile(
            title: Text('Posts'),
            subtitle: SuperRichText(
              text:
                  'A list of Json objects fetched, maintained caching. Used   ',
              richText: 'flutter_bloc',
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const PostsPage()));
            },
            dense: true,
          ),
          const Divider(),

          // comments || using bloc || lazy || no cached
          ListTile(
            title: Text('Comments'),
            subtitle: SuperRichText(
              text: 'Lazy Loading. Used   ',
              richText: 'flutter_bloc',
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const CommentsPage()));
            },
            dense: true,
          ),
          const Divider(),

          // albums || using riverpod || not lazy || no cached
          ListTile(
            title: Text('Albums'),
            subtitle: SuperRichText(
              text: 'Used   ',
              richText: 'Riverpod',
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const AlbumsPage()));
            },
            dense: true,
          ),
          const Divider(),

          // photos || using bloc || lazy || no cached
          ListTile(
            title: Text('Photos'),
            subtitle: SuperRichText(
              text: 'Lazily loaded using   ',
              richText: 'flutter_bloc',
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const PhoPage()));
            },
            dense: true,
          ),
          const Divider(),

          // photos || using riverpod || lazy || no cached
          ListTile(
            title: Text('Photos Again'),
            subtitle: SuperRichText(
              text: 'Lazily loaded using   ',
              richText: 'Riverpod',
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const PhotosPage()));
            },
            dense: true,
          ),
          const Divider(),

          // posts || using bloc || lazy || cached
          ListTile(
            title: Text('Lazy Posts'),
            subtitle: SuperRichText(
              text: 'A list of Json objects fetched lazily using   ',
              richText: 'flutter_bloc',
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const LazyPostPage()));
            },
            dense: true,
          ),
          const Divider(),

          // posts || using riverpod || not lazy || cached
          ListTile(
            title: Text('Posts Riverpod'),
            subtitle: SuperRichText(
              text: 'A list of JSON objects fetched using   ',
              richText: 'Riverpod',
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const PostsInRiverpodPage()));
            },
            dense: true,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
