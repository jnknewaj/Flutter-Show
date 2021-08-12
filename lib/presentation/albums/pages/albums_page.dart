import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_parsing/providers.dart';
import 'package:json_parsing/utils/helper.dart';
import 'package:super_ui/super_ui.dart';

class AlbumsPage extends StatefulWidget {
  const AlbumsPage();

  @override
  _AlbumsPageState createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => context.read(albumsNotifierProvider.notifier).watchAllAlbums(),
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
            final state = watch(albumsNotifierProvider);

            return state.map(
              initial: (_) => const CircularProgressIndicator(),
              loading: (_) => const CircularProgressIndicator(),
              loaded: (s) {
                return ListView.separated(
                  separatorBuilder: (_, index) => const Divider(thickness: 1.0),
                  itemCount: s.albums.length,
                  itemBuilder: (context, index) {
                    final album = s.albums[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(album.title),
                      subtitle: Text(album.userId.toString()),
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
