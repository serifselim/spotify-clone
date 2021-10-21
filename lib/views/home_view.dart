// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list_item_widget.dart';
import 'package:spotify_clone/components/home/music_list_widget.dart';
import 'package:spotify_clone/components/navigation/navigation_bar.dart';
import 'package:spotify_clone/constants/color_constants.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Good Evening',
                      style: sectionTitleTextStyle,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    MusicListWidget()
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}
