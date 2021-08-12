import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_parsing/application/photos/bloc/pho_watcher_bloc.dart';
import 'package:json_parsing/injection.dart';
import 'package:json_parsing/presentation/photos/widgets/photo_item.dart';
import 'package:json_parsing/presentation/posts/widgets/bottom_loader.dart';
import 'package:json_parsing/presentation/posts/widgets/message_widget.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

/**
 * Actually same as [PhotosPage], but done with flutter_bloc
 */

class PhoPage extends StatelessWidget {
  const PhoPage();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhoWatcherBloc>(
      create: (context) =>
          getIt<PhoWatcherBloc>()..add(const PhoWatcherEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pho'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<PhoWatcherBloc, PhoWatcherState>(
            builder: (context, state) {
              switch (state.status) {
                case PhoWatcherStatus.failure:
                  return MessageWidget(
                    message: mapFailuresToMessage(state.failures!),
                  );
                case PhoWatcherStatus.success:
                  if (state.photos.isEmpty) {
                    return MessageWidget(message: 'No Photos');
                  }
                  return LazyLoadScrollView(
                    onEndOfPage: () {
                      context
                          .read<PhoWatcherBloc>()
                          .add(PhoWatcherEvent.started());
                    },
                    child: ListView.separated(
                      separatorBuilder: (_, index) =>
                          const Divider(thickness: 1.0),
                      itemCount: state.photos.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        return index >= state.photos.length
                            ? state.failures == null
                                ? state.hasReachedMax
                                    ? MessageWidget(
                                        message: 'Reached At The End')
                                    : BottomLoader()
                                : MessageWidget(
                                    message:
                                        mapFailuresToMessage(state.failures!),
                                  )
                            : PhotoItem(
                                photo: state.photos[index],
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
