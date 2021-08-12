import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_parsing/application/post/blocs/posts/posts_bloc.dart';
import 'package:json_parsing/injection.dart';
import 'package:json_parsing/presentation/posts/widgets/empty_widget.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:super_ui/super_ui.dart';

class PostsPage extends StatelessWidget {
  const PostsPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsBloc>(
      create: (context) =>
          getIt<PostsBloc>()..add(const PostsEvent.getAllPost()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: BlocBuilder<PostsBloc, PostsState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const EmptyWidget(),
                loading: (_) => const EmptyWidget(),
                loaded: (s) {
                  return ListView.separated(
                    separatorBuilder: (_, index) =>
                        const Divider(thickness: 1.0),
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
      ),
    );
  }
}
