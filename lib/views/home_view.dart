// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list.dart';
import 'package:spotify_clone/components/home/rectently_list.dart';
import 'package:spotify_clone/components/home/your_list.dart';
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
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  sectionTitle('Good Evening'),
                  MusicList(),
                  sectionTitle('Recently Played'),
                  RectentlyList(),
                  sectionTitle('New Releases For You'),
                  YourList(),
                  sectionTitle('New Releases For You'),
                  YourList(),
                  sectionTitle('New Releases For You'),
                  YourList()
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
      margin: EdgeInsets.only(left: 30.0, bottom: 16.0, top: 30.0),
      child: Text(
        text,
        style: sectionTitleTextStyle,
      ),
    );
  }
}

