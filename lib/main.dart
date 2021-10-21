import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/constants/color_constants.dart';
import 'package:spotify_clone/provider/music_model.dart';
import 'package:spotify_clone/views/home_view.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => MusicModel(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colorCodGray,
      ),
      title: 'Material App',
      home: HomeView()
    );
  }
}
