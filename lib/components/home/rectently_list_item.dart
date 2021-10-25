import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class RectentlyListItem extends StatelessWidget {

  final double circular;
  final String img;
  final String text;

  const RectentlyListItem({Key? key, required this.text, required this.img,this.circular = 0.0}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(circular)),
            child: SizedBox(
              height: 115,
              child: Image.asset(img),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: 110.0,
            child: Text(
              text,
              style: detailTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
