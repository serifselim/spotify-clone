// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/components/home/music_list.dart';
import 'package:spotify_clone/components/home/rectently_list.dart';
import 'package:spotify_clone/components/home/your_list.dart';
import 'package:spotify_clone/components/navigation/current_song.dart';
import 'package:spotify_clone/components/navigation/navigation_bar.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';
import 'package:spotify_clone/provider/music_model.dart';
import 'package:spotify_clone/views/play_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicModel>(
      builder: (context, data, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    sectionTitle('Good Evening'),
                    MusicList(musicList: data.musicList),
                    sectionTitle('Recently Played'),
                    RectentlyList(songList: data.musicList),
                    sectionTitle('New Releases For You'),
                    YourList(songList: data.musicList),
                    sectionTitle('<Section Title>'),
                    YourList(songList: data.musicList),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 120.0,
            child: Column(
              children: [
                CurrentSong(
                  playerState: data.audioStatus,
                  soundPageCallback: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlayView()));
                  },
                  playPauseButtonCallback: ()  {
                    data.audioStatus == PlayerState.PLAYING ? data.pause() : data.resume();
                    print(data.audioStatus);
                  },
                ),
                NavigationBar()
              ],
            ),
          ),
        );
      },
    );
  }

  Container sectionTitle(String text) {
    return Container(
      margin: EdgeInsets.only(left: 30.0, bottom: 16.0, top: 30.0),
      child: Text(
        text,
        style: sectionTitleTextStyle,
      ),
    );
  }
}


