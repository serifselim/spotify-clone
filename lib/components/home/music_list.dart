import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list_item.dart';

class MusicList extends StatelessWidget {
  const MusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: 230.0,
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (1 / .33),
          crossAxisCount: 2,
          children: <Widget>[
            MusicListItem(),
            MusicListItem(),
            MusicListItem(),
            MusicListItem(),
            MusicListItem(),
            MusicListItem(),
          ],
        ),
      ),
    );
  }
}