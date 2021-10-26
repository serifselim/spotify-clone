import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_clone/constants/text_styles_constants.dart';

class PlayViewAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(AntDesign.down),
          ),
        ),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Entypo.dots_three_vertical,
                  color: Colors.white,
                )),
          )
        ],
        // ignore: prefer_const_literals_to_create_immutables
        title: Column(children: [
          const Text(
            'PLAYİNG FROM ALBUM',
            style: appBarLightTextStyle,
          ),
          const Text(
            'Coastin',
            style: appBarBoldTextStyle,
          ),
        ]));
  }
}