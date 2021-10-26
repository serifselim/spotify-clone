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
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                musicText,
                style: sectionTitleTextStyle,
              ),
            ),
            const Text(
              'Detail Text Example',
              style: detailTextStyle,
            )
          ],
        ),
        const IconButton(
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
