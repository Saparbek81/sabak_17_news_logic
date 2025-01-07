import 'package:dio/dio.dart';
import 'package:sabak_17_news_logic/features/data/api.dart';
import 'package:sabak_17_news_logic/features/model/news_model.dart';

class NewsService {
  final Dio dio = Dio();
  Future<NewsModel?> fetchData() async {
    final response = await dio.get(Api.data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = response.data;
      return NewsModel.fromJson(data);
    }
    return null;
  }
}
