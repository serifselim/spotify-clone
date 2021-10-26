import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/provider/song.dart';

class MusicModel extends ChangeNotifier {
  List<Song> songList = [
    Song(songImg: 'assets/images/fruit.jpg', songText: 'Fruit Music'),
    Song(songImg: 'assets/images/japanese.jpg', songText: 'Japanese Lo-Fi'),
    Song(songImg: 'assets/images/lofi.png', songText: 'HipHop LoFi'),
    Song(songImg: 'assets/images/street.jpg', songText: 'V1-Lofi-Street'),
    Song(songImg: 'assets/images/train.jpg', songText: 'Best Way Songs'),
    Song(songImg: 'assets/images/winter.jpg', songText: 'Cold Winter Lofi'),
  ];
}