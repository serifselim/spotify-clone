import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class MusicDetails extends StatelessWidget {
  const MusicDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Japanese Lofi',
              style: sectionTitleTextStyle,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('Iration',
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