// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';
import 'package:spotify_clone/constants/widgets_style_constants.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: musicItemDecoration,
      child: Row(
        children: [
          itemImage(),
          SizedBox(
            width: 8.0,
          ),
          itemText()
        ],
      ),
    );
  }

  Text itemText() {
    return const Text('Chon', style: detailTextStyle);
  }

  ClipRRect itemImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(4.0),
        bottomLeft: Radius.circular(4.0),
      ),
      child: Image.asset('assets/images/chon.png'),
    );
  }
}
