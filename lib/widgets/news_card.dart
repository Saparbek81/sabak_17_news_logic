import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_17_news_logic/constants/text_styles/title_color.dart';
import 'package:sabak_17_news_logic/features/model/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles> data;
  void openURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not Launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    DateFormat date = DateFormat();
    final news = data[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black,
          ))),
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
                      Text(
                          news.publisheddAt != null
                              ? DateFormat.MMMEd()
                                  .add_jm()
                                  .format(DateTime.parse(news.publisheddAt!))
                              : 'Unknown Date',
                          style: newsTextStyle),
                      Text(news.description ?? 'beth', style: newsTextStyle),
                      TextButton(
                        onPressed: () => openURL(news.url ?? ""),
                        child: Text(
                          news.url ??
                              'No URL', // Эгерде URL жок болсо, "No URL" деп жазылат
                          style: newsUrlTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
