import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/application/post/blocs/posts/posts_bloc.dart';
import 'package:json_parsing/domain/posts/i_post_repository.dart';

class PostsNotifier extends StateNotifier<PostsState> {
  final IPostRepository repository;

  PostsNotifier(this.repository) : super(const PostsState.initial());

  Future<void> getAllPosts() async {
    state = const PostsState.loading();
    final resultEither = await repository.getAllPosts();
    state = resultEither.fold(
      (l) => PostsState.failedToLoad(l),
      (r) => PostsState.loaded(r),
    );
  }
}
