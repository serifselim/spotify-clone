import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/color_constants.dart';

class MusicListItemWidget extends StatelessWidget {
  const MusicListItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: colorMineShaft,
          borderRadius:
              BorderRadius.all(Radius.circular(4.0))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0)),
            child: Image.asset('assets/images/chon.png'),
          ),
          const SizedBox(
            width: 8.0,
          ),
          const Text(
            'Chon',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
