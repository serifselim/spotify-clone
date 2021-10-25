import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class YourListItem extends StatelessWidget {
  const YourListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.asset('assets/images/tycho.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Text(
                  'Dance Gavin Dance',
                  style: detailTextStyle,
                ),
                Text('Album • Afterburner')
              ],
            ),
          ),
        ],
      ),
    );
  }
}