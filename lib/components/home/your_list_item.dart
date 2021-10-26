import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class YourListItem extends StatelessWidget {
  final String text;
  final String img;

  YourListItem({required this.text, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150.0,
            child: Image.asset(img),
          ),
          SizedBox(
            height: 10.0,
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