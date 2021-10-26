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
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  void musicPagePushFunc() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MusicView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MusicModel>(
      builder: (context, musicData, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle('Good Evening'),
                    MusicList(musicList: musicData.musicList),
                    sectionTitle('Recently Played'),
                    RectentlyList(songList: musicData.musicList),
                    sectionTitle('New Releases For You'),
                    YourList(songList: musicData.musicList),
                    sectionTitle('<Section Title>'),
                    YourList(songList: musicData.musicList),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: musicData.currentMusic != null
              ? SizedBox(
                  height: 120.0,
                  child: Column(
                    children: [
                      CurrentSong(
                        currentMusic: musicData.currentMusic,
                        playerState: musicData.audioState,
                        musicPagePushCallback: musicPagePushFunc,
                        playPauseButtonCallback: () {
                          musicData.audioState == PlayerState.PLAYING
                              ? musicData.pause()
                              : musicData.resume();
                        },
                      ),
                      const NavigationBar()
                    ],
                  ),
                )
              : const NavigationBar(),
        );
      },
    );
  }

  Container sectionTitle(String text) {
    return Container(
      margin: const EdgeInsets.only(left: 30.0, bottom: 16.0, top: 30.0),
      child: Text(
        text,
        style: sectionTitleTextStyle,
      ),
    );
  }
}
