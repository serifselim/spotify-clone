// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/components/play/music_actions.dart';
import 'package:spotify_clone/components/play/music_details.dart';
import 'package:spotify_clone/components/play/music_image.dart';
import 'package:spotify_clone/components/play/play_view_app_bar.dart';
import 'package:spotify_clone/provider/music_model.dart';
import 'dart:math';

class PlayView extends StatefulWidget {
  const PlayView({Key? key}) : super(key: key);

  @override
  _PlayViewState createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MusicModel>(builder: (context, musicData, child) {
      return Scaffold(
        appBar: PlayViewAppBar(),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              MusicImage(
                musicImg: musicData.currentMusic.musicImg,
              ),
              MusicDetails(
                musicText: musicData.currentMusic.musicText,
              ),
              MusicActions(
                playerState: musicData.audioStatus,
                playPauseButtonCallback: () {
                  musicData.audioStatus == PlayerState.PLAYING
                      ? musicData.pause()
                      : musicData.resume();
                },
                stepActionsCallback: () {
                  Random random = Random();
                  int randomNumber = random.nextInt(musicData.musicList.length - 1);           
                  musicData.play(musicData: musicData.musicList[randomNumber]);
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
