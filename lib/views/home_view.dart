// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list.dart';
import 'package:spotify_clone/components/home/rectently_list.dart';
import 'package:spotify_clone/components/home/rectently_list_item.dart';
import 'package:spotify_clone/components/navigation/navigation_bar.dart';
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
          padding: EdgeInsets.only(top: 30.0 , left: 30.0 , bottom: 30.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  sectionTitle('Good Evening'),
                  MusicList(),
                  SizedBox(
                    height: 30.0,
                  ),
                  sectionTitle('Recently Played'),
                  RectentlyList()
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }

  Container sectionTitle(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: sectionTitleTextStyle,
      ),
    );
  }
}
