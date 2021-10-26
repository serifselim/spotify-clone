// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_clone/components/play/play_view_app_bar.dart';

class PlayView extends StatefulWidget {
  PlayView({Key? key}) : super(key: key);

  @override
  _PlayViewState createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlayViewAppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 400.0,
              child: Image.asset('assets/images/japanese.jpg',),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Japanese Lofi'),
                    Text('Iration')
                  ],
                ),
                IconButton(onPressed: null, icon: Icon(Icons.favorite_border))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: null, icon: Icon(Fontisto.step_backwrad)),
                IconButton(iconSize: 70,onPressed: null, icon: Icon(MaterialCommunityIcons.pause_circle,)),
                IconButton(onPressed: null, icon: Icon(Fontisto.step_forward))
              ],
            )

          ],
        ),
      ),
    );
  }
}


