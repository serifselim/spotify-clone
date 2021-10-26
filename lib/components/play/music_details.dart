import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class MusicDetails extends StatelessWidget {
  final String musicText;

  const MusicDetails({Key? key, required this.musicText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              musicText,
              style: sectionTitleTextStyle,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('Detail Text Example',
            style: detailTextStyle,)
          ],
        ),
        IconButton(
            iconSize: 30.0,
            onPressed: null,
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ))
      ],
    );
  }
}