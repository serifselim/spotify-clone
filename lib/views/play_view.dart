// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_clone/components/play/play_view_app_bar.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

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
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              height: 400.0,
              child: Image.asset(
                'assets/images/japanese.jpg',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Japanese Lofi',
                      style: sectionTitleTextStyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Iration',
                    style: detailTextStyle,)
                  ],
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
