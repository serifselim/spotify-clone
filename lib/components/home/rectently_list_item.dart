import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class RectentlyListItem extends StatelessWidget {

  final double circular;

  const RectentlyListItem({Key? key, this.circular = 0.0}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(circular)),
            child: SizedBox(
              height: 115,
              child: Image.asset('assets/images/mgk.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: 100.0,
            child: const Text(
              'Tickets to my downfall',
              style: detailTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
