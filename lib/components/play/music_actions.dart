import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MusicActions extends StatelessWidget {
  final VoidCallback playPauseButtonCallback;
  final VoidCallback stepActionsCallback;
  final PlayerState playerState;

  const MusicActions({
    Key? key,
    required this.playPauseButtonCallback,
    required this.playerState,
    required this.stepActionsCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              iconSize: 30,
              onPressed: stepActionsCallback,
              icon: const Icon(
                Fontisto.step_backwrad,
                color: Colors.white,
              )),
          IconButton(
            iconSize: 80,
            onPressed: playPauseButtonCallback,
            icon: playerState == PlayerState.PLAYING
                ? const Icon(
                    AntDesign.pausecircle,
                    color: Colors.white,
                  )
                : const Icon(
                    AntDesign.play,
                    color: Colors.white,
                  ),
          ),
          IconButton(
            iconSize: 30,
            onPressed: stepActionsCallback,
            icon: const Icon(
              Fontisto.step_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
