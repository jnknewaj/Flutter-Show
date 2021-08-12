import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_parsing/application/post/blocs/lazyPostsTwo/lazypoststwo_bloc.dart';
import 'package:json_parsing/injection.dart';
import 'package:json_parsing/presentation/posts/widgets/lazy_post_list.dart';

class LazyPostPage extends StatelessWidget {
  const LazyPostPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LazypoststwoBloc>(
      create: (context) =>
          getIt<LazypoststwoBloc>()..add(LazypoststwoEvent.started()),
      child: Scaffold(
        appBar: AppBar(title: Text('Lazy Posts')),
        body: const LazyPostsList(),
      ),
    );
  }
}
