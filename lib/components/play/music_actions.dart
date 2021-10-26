import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MusicActions extends StatelessWidget {
  const MusicActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              iconSize: 30,
              onPressed: null,
              icon: Icon(
                Fontisto.step_backwrad,
                color: Colors.white,
              )),
          IconButton(
              iconSize: 90,
              onPressed: null,
              icon: Icon(MaterialCommunityIcons.pause_circle,
                  color: Colors.white)),
          IconButton(
              iconSize: 30,
              onPressed: null,
              icon: Icon(Fontisto.step_forward, color: Colors.white))
        ],
      ),
    );
  }
}