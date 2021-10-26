import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class YourListItem extends StatelessWidget {
  final String text;
  final String img;

  const YourListItem({Key? key, required this.text, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 150.0,
            child: Image.asset(img),
          ),
          Text(
            text,
            style: detailTextStyle,
          ),
          Text('Album • $text'),
        ],
      ),
    );
  }
}