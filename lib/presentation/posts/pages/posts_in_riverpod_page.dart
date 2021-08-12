import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/providers.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:super_ui/super_ui.dart';

class PostsInRiverpodPage extends StatefulWidget {
  const PostsInRiverpodPage();

  @override
  _PostsInRiverpodPageState createState() => _PostsInRiverpodPageState();
}

class _PostsInRiverpodPageState extends State<PostsInRiverpodPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () => context.read(postsNotifierProvider.notifier).getAllPosts(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts In Riverpod')),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Consumer(
          builder: (context, watch, child) {
            final state = watch(postsNotifierProvider);

            return state.map(
              initial: (_) => const CircularProgressIndicator(),
              loading: (_) => const CircularProgressIndicator(),
              loaded: (s) {
                return ListView.separated(
                  separatorBuilder: (_, index) => const Divider(thickness: 1.0),
                  itemCount: s.posts.length,
                  itemBuilder: (context, index) {
                    final post = s.posts[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(post.title),
                      subtitle: Text(post.body),
                      dense: true,
                    );
                  },
                );
              },
              failedToLoad: (s) => BillboardText(
                text: mapFailuresToMessage(s.failures),
                textType: TextType.error,
              ),
            );
          },
        ),
      ),
    );
  }
}
