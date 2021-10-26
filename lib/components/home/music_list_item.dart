import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';
import 'package:spotify_clone/constants/widgets_style_constants.dart';

class MusicListItem extends StatelessWidget {
  final String img;
  final String text;
  final VoidCallback onTap;

  const MusicListItem(
      {Key? key, required this.img, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: musicItemDecoration,
        child: Row(
          children: [
            itemImage(),
            const SizedBox(
              width: 8.0,
            ),
            itemText()
          ],
        ),
      ),
    );
  }

  SizedBox itemText() {
    return SizedBox(
      width: 110.0,
      child: Text(text, style: detailTextStyle),
    );
  }

  ClipRRect itemImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(4.0),
        bottomLeft: Radius.circular(4.0),
      ),
      child: Image.asset(img),
    );
  }
}
