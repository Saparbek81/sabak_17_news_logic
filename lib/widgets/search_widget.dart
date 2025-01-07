import 'package:flutter/material.dart';
import 'package:sabak_17_news_logic/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                color: Color(0xff000000),
                spreadRadius: 5,
                offset: Offset(5, 15))
          ]),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: orangColor,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 35,
            color: searchColor,
          ),
        ),
      ),
    );
  }
}
