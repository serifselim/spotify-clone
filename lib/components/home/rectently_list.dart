import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/rectently_list_item.dart';

class RectentlyList extends StatelessWidget {
  const RectentlyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          SizedBox(
            width: 30.0,
          ),
          RectentlyListItem(
            circular: 100.0,
          ),
          RectentlyListItem(),
          RectentlyListItem(),
          RectentlyListItem(),
          RectentlyListItem(),
          RectentlyListItem(),
          RectentlyListItem(),
        ],
      ),
    );
  }
}
