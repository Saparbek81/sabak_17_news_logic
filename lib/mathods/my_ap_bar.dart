import 'package:flutter/material.dart';
import 'package:sabak_17_news_logic/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_logic/constants/text_styles/title_color.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: orangColor,
    title: const Text(
      "News Agregator",
      style: titleStyle,
    ),
    actions: const [
      Icon(
        Icons.more_vert,
        color: searchColor,
      ),
    ],
  );
}
