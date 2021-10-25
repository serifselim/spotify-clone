import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/rectently_list_item.dart';

class RectentlyList extends StatelessWidget {
  final List songList;

  const RectentlyList({Key? key, required this.songList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30.0),
        itemCount: songList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          var songData = songList[index];
          return RectentlyListItem(
            img: songData.songImg,
            text: songData.songText
          );
        },
      ),
    );
  }
}
