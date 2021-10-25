import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/components/home/music_list_item.dart';
import 'package:spotify_clone/provider/music_model.dart';

class MusicList extends StatelessWidget {
  List songList;

  MusicList({Key? key, required this.songList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: 230.0,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              childAspectRatio: (1 / .33),
              crossAxisSpacing: 10),
          itemCount: songList.length,
          itemBuilder: (context, index){
            var songData = songList[index];
            return MusicListItem(
              img: songData.songImg,
              text: songData.songText,
            );
          },
        ),
      ),
    );
  }
}
