import 'package:flutter/material.dart';
import 'package:sabak_17_news_logic/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: orangColor,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 35,
          color: searchColor,
        ),
      ),
    );
  }
}
