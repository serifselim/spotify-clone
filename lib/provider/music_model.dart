import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/provider/song.dart';

class MusicModel extends ChangeNotifier {
  List<Song> songList = [
    Song(songImg: 'assets/images/chon.png', songText: 'Chon'),
    Song(songImg: 'assets/images/coastin.png', songText: 'Coastin'),
    Song(songImg: 'assets/images/iration.png', songText: 'Coastin'),
    Song(songImg: 'assets/images/mgk.png', songText: 'Machine Gun Kelly'),
    Song(songImg: 'assets/images/the_office.png', songText: 'The Oral History of The Office '),
    Song(songImg: 'assets/images/tycho.png', songText: 'Tycho'),
  ];
}