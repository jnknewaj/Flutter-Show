import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_parsing/application/comments/comments_watcher/comments_watcher_bloc.dart';
import 'package:json_parsing/injection.dart';
import 'package:json_parsing/presentation/comments/widgets/comment_item.dart';
import 'package:json_parsing/presentation/posts/widgets/bottom_loader.dart';
import 'package:json_parsing/presentation/posts/widgets/message_widget.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CommentsWatcherBloc>(
      create: (context) => getIt<CommentsWatcherBloc>()
        ..add(const CommentsWatcherEvent.started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Comments')),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: BlocBuilder<CommentsWatcherBloc, CommentsWatcherState>(
            builder: (context, state) {
              switch (state.status) {
                case CommentStatus.failure:
                  return MessageWidget(
                    message: mapFailuresToMessage(state.failures!),
                  );
                case CommentStatus.success:
                  if (state.comments.isEmpty) {
                    return MessageWidget(message: 'No Comments Found!');
                  }
                  return LazyLoadScrollView(
                    onEndOfPage: () {
                      context
                          .read<CommentsWatcherBloc>()
                          .add(const CommentsWatcherEvent.started());
                    },
                    child: ListView.separated(
                      separatorBuilder: (_, index) =>
                          const Divider(thickness: 1.0),
                      itemCount: state.comments.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        // final comment = state.comments[index];
                        return index >= state.comments.length
                            ? state.failures == null
                                ? state.hasReachedMax
                                    ? MessageWidget(
                                        message: 'Reached At The End',
                                      )
                                    : BottomLoader()
                                : MessageWidget(
                                    message:
                                        mapFailuresToMessage(state.failures!),
                                  )
                            : CommentItem(
                                comment: state.comments[index],
                                index: index + 1,
                              );
                      },
                    ),
                  );
                default:
                  return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
