import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/color_constants.dart';
import 'package:spotify_clone/provider/music.dart';

class CurrentSong extends StatelessWidget {
  final VoidCallback musicPagePushCallback;
  final VoidCallback playPauseButtonCallback;
  final PlayerState playerState;
  final Music currentMusic;

  const CurrentSong(
      {Key? key,
      required this.musicPagePushCallback,
      required this.playPauseButtonCallback,
      required this.playerState,
      required this.currentMusic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: musicPagePushCallback,
      child: Container(
        color: colorMineShaft,
        child: Row(
          children: [
            currentSongImg(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [currentSongDetails(), currentSongActions()],
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
        const Icon(Icons.favorite_border),
        TextButton(
          onPressed: playPauseButtonCallback,
          child: playerState == PlayerState.PLAYING
              ? const Icon(
                  Icons.pause,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
        ),
      ],
    );
  }

  Column currentSongDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(currentMusic.musicText),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5.0),
              child: const Icon(Icons.devices_other),
            ),
            const Text('Devices Available')
          ],
        )
      ],
    );
  }

  Container currentSongImg() {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      width: 63.0,
      child: Image.asset(currentMusic.musicImg),
    );
  }
}
