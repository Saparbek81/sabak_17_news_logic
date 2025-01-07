import 'package:flutter/material.dart';
import 'package:sabak_17_news_logic/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_logic/features/data/service.dart';
import 'package:sabak_17_news_logic/features/model/news_model.dart';
import 'package:sabak_17_news_logic/mathods/my_ap_bar.dart';
import 'package:sabak_17_news_logic/widgets/news_card.dart';
import 'package:sabak_17_news_logic/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    NewsService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: searchColor,
      appBar: myAppBar(),
      body: FutureBuilder<NewsModel?>(
          future: NewsService().fetchData(),
          builder: (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator.adaptive());
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: Text('server ishtebeit'),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return RefreshIndicator(
                onRefresh: () async {},
                child: ListView.builder(
                    itemCount: snapshot.data!.articles!.length,
                    itemBuilder: (context, index) {
                      final data = snapshot.data!.articles;
                      return NewCard(index: index, data: data);
                    }),
              );
            }
            return Center(
              child: Text('Белгисиз абал'),
            );
          }),
      floatingActionButton: const SearchWidget(),
    ));
  }
}
