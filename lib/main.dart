import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/constants/color_constants.dart';
import 'package:spotify_clone/provider/music_model.dart';
import 'package:spotify_clone/views/home_view.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => MusicModel(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colorCodGray,
        appBarTheme: const AppBarTheme(
          backgroundColor: colorCodGray
        )
      ),
      title: 'Material App',
      home: const HomeView()
    );
  }
}
