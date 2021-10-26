import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/color_constants.dart';

class CurrentSong extends StatelessWidget {
  final VoidCallback soundPageCallback;
  final VoidCallback playButtonCallback;

  const CurrentSong({Key? key, required this.soundPageCallback, required this.playButtonCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: soundPageCallback,
      child: Container(
        color: colorMineShaft,
        child: Row(
          children: [
            currentSongImg(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentSongDetails(),
                  currentSongActions()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row currentSongActions() {
    return Row(
                  children: [
                    GestureDetector(onTap: () {
                      print('favorite button');
                    },child: Icon(Icons.favorite_border),),
                    TextButton(
                        onPressed: playButtonCallback,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ))
                  ],
                );
  }

  Column currentSongDetails() {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Prisioner - Dance Gavin Dance'),
                    Row(
                      children: [
                        Icon(Icons.devices_other),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('Devices Available')
                      ],
                    )
                  ],
                );
  }

  Container currentSongImg() {
    return Container(
            margin: EdgeInsets.only(right: 10.0),
            width: 63.0,
            child: Image.asset('assets/images/mgk.png'),
          );
  }
}