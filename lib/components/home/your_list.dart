import 'package:flutter/material.dart';
import 'package:spotify_clone/components/home/your_list_item.dart';

class YourList extends StatelessWidget {
  const YourList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 30.0,
          ),
          YourListItem(),
          YourListItem(),
          YourListItem(),
          YourListItem(),
          YourListItem(),
          YourListItem(),
        ],
      ),
    );
  }
}
