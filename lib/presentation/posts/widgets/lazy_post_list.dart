import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_parsing/application/post/blocs/lazyPostsTwo/lazypoststwo_bloc.dart';
import 'package:json_parsing/presentation/posts/widgets/bottom_loader.dart';
import 'package:json_parsing/presentation/posts/widgets/message_widget.dart';
import 'package:json_parsing/presentation/posts/widgets/post_item.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class LazyPostsList extends StatelessWidget {
  const LazyPostsList();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LazypoststwoBloc, LazypoststwoState>(
      builder: (context, state) {
        switch (state.status) {
          case PostStatus.failure:
            return MessageWidget(
              message: mapFailuresToMessage(state.failures!),
            );
          case PostStatus.success:
            if (state.posts.isEmpty) {
              return MessageWidget(message: 'No Post');
            }
            return LazyLoadScrollView(
              onEndOfPage: () {
                context
                    .read<LazypoststwoBloc>()
                    .add(LazypoststwoEvent.started());
              },
              child: ListView.separated(
                separatorBuilder: (_, index) => const Divider(thickness: 1.0),
                itemCount: state.posts.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  return index >= state.posts.length
                      ? state.failures == null
                          ? state.hasReachedMax
                              ? MessageWidget(message: 'Reached At The End')
                              : BottomLoader()
                          : MessageWidget(
                              message: mapFailuresToMessage(state.failures!),
                            )
                      : PostItem(post: state.posts[index]);
                },
              ),
            );
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
