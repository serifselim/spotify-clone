import 'package:flutter/material.dart';

class MusicImage extends StatelessWidget {
  const MusicImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 400.0,
      child: Image.asset(
        'assets/images/japanese.jpg',
      ),
    );
  }
}