// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/music_list_item_widget.dart';
import 'package:spotify_clone/components/home/music_list_widget.dart';
import 'package:spotify_clone/components/navigation/navigation_bar.dart';
import 'package:spotify_clone/constants/color_constants.dart';

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
                  children: [
                    const Text(
                      'Good Evening',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    MusicListWidget()
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBar(),
      ),
    );
  }
}


