import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/provider/music.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicModel extends ChangeNotifier {
  List<Music> musicList = [
    Music(
        musicImg: 'assets/images/fruit.jpg',
        musicText: 'Fruit Music',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2021/07/purrple-cat-floating-castle.mp3'),
    Music(
        musicImg: 'assets/images/japanese.jpg',
        musicText: 'Japanese Lo-Fi',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2021/07/purrple-cat-dreams-come-true.mp3'),
    Music(
        musicImg: 'assets/images/lofi.png',
        musicText: 'HipHop LoFi',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2020/11/audionautix-trippin-coffee.mp3'),
    Music(
        musicImg: 'assets/images/street.jpg',
        musicText: 'V1-Lofi-Street',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2021/09/Merry-Bay-Upbeat-Summer-Lofi.mp3'),
    Music(
        musicImg: 'assets/images/train.jpg',
        musicText: 'Best Way Songs',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2021/09/Morning-Routine-Lofi-Study-Music.mp3'),
    Music(
        musicImg: 'assets/images/winter.jpg',
        musicText: 'Cold Winter Lofi',
        musicURL:
            'https://www.chosic.com/wp-content/uploads/2021/02/Fragile-Lo-Fi-Chill-Melancholic-Music.mp3'),
  ];

  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState audioState = PlayerState.PLAYING;
  var currentMusic;

  // Play Music
  void play({required Music musicData}) async {
    int result = await audioPlayer.play(musicData.musicURL);
    if (result == 1) {
      setAudioStatus();
      currentMusic = musicData;
    }
    notifyListeners();
  }

  // Stop Music
  void stop() async {
    int result = await audioPlayer.stop();

    if (result == 1) {
      setAudioStatus();
    }

    notifyListeners();
  }

  // Pause Music
  void pause() async {
    int result = await audioPlayer.pause();

    if (result == 1) {
      setAudioStatus();
    }

    notifyListeners();
  }

  // Resume Music
  void resume() async {
    int result = await audioPlayer.resume();

    if (result == 1) {
      setAudioStatus();
    }

    notifyListeners();
  }

  // Set Audio State
  void setAudioStatus() {
    audioPlayer.onPlayerStateChanged.listen((event) {
      audioState = event;
    });
  }
}
