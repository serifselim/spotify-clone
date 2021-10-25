import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/your_list_item.dart';

class YourList extends StatelessWidget {
  final List songList;

  const YourList({Key? key, required this.songList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30.0),
        itemCount: songList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          var songData = songList[index];
          return YourListItem(
            img: songData.songImg,
            text: songData.songText
          );
        },
      ),
    );
  }
}
