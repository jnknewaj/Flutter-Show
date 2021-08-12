import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/application/photos/photos_watcher_state.dart';
import 'package:json_parsing/presentation/photos/widgets/photo_item.dart';
import 'package:json_parsing/presentation/posts/widgets/bottom_loader.dart';
import 'package:json_parsing/presentation/posts/widgets/message_widget.dart';
import 'package:json_parsing/providers.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage();

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => context.read(photosNotifierProvider.notifier).watchPhotosLazily(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Photos In Riverpod')),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Consumer(
          builder: (context, watch, child) {
            final state = watch(photosNotifierProvider);

            switch (state.status) {
              case PhotosWatcherStatus.failure:
                return MessageWidget(
                  message: mapFailuresToMessage(state.failures!),
                );
              case PhotosWatcherStatus.success:
                if (state.photos.isEmpty) {
                  return MessageWidget(message: 'No Post');
                }
                return LazyLoadScrollView(
                  onEndOfPage: () {
                    context
                        .read(photosNotifierProvider.notifier)
                        .watchPhotosLazily();
                  },
                  child: ListView.separated(
                    separatorBuilder: (_, index) =>
                        const Divider(thickness: 1.0),
                    itemCount: state.photos.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      return index >= state.photos.length
                          ? state.failures == null
                              ? state.hasReachedMax
                                  ? MessageWidget(message: 'Reached At The End')
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
    );
  }
}
