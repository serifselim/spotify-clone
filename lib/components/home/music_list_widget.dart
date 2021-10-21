import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list_item_widget.dart';

class MusicListWidget extends StatelessWidget {
  const MusicListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.0,
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: (1 / .33),
        crossAxisCount: 2,
        children: <Widget>[
          MusicListItemWidget(),
          MusicListItemWidget(),
          MusicListItemWidget(),
          MusicListItemWidget(),
          MusicListItemWidget(),
          MusicListItemWidget(),
        ],
      ),
    );
  }
}