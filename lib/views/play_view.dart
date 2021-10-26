import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/components/play/music_actions.dart';
import 'package:spotify_clone/components/play/music_details.dart';
import 'package:spotify_clone/components/play/music_image.dart';
import 'package:spotify_clone/components/play/play_view_app_bar.dart';
import 'package:spotify_clone/provider/music_model.dart';
import 'dart:math';

class MusicView extends StatefulWidget {
  const MusicView({Key? key}) : super(key: key);

  @override
  _MusicViewState createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  void stepActionsFunc(dynamic musicData) {
    Random random = Random();
    int randomNumber = random.nextInt(musicData.musicList.length - 1);
    musicData.play(musicData: musicData.musicList[randomNumber]);
  }

  void playPauseFunc(dynamic musicData) {
    musicData.audioState == PlayerState.PLAYING
        ? musicData.pause()
        : musicData.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicModel>(builder: (context, musicData, child) {
      return Scaffold(
        appBar: PlayViewAppBar(),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              MusicImage(
                musicImg: musicData.currentMusic.musicImg,
              ),
              MusicDetails(
                musicText: musicData.currentMusic.musicText,
              ),
              MusicActions(
                playerState: musicData.audioState,
                playPauseButtonCallback: () => playPauseFunc(musicData),
                stepActionsCallback: () => stepActionsFunc(musicData),
              ),
            ],
          ),
        ),
      );
    });
  }
}
