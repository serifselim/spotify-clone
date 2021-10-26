// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
      ),
    );
  }
}

