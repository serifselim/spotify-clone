import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.white,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home', backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), label: 'Your Library'),
      ],
    );
  }
}
