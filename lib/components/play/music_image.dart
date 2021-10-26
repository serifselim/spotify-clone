import 'package:flutter/material.dart';

class MusicImage extends StatelessWidget {
  final String musicImg;

  const MusicImage({Key? key, required this.musicImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 400.0,
      child: Image.asset(musicImg),
    );
  }
}
