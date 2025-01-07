import 'package:flutter/material.dart';
import 'package:sabak_17_news_logic/constants/text_styles/title_color.dart';
import 'package:sabak_17_news_logic/features/model/news_model.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles> data;

  @override
  Widget build(BuildContext context) {
    final news = data[index];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
              width: 130,
              height: 135,
              child: Image.network(
                news.urlToImage ?? "",
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(news.author ?? "Без автора", style: newsTextStyle),
                  Text(news.description ?? 'beth', style: newsTextStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
