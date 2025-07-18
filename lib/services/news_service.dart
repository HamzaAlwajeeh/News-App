import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>?> getNews({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=6faee75d5def4e109272ff3c8c02145b&category=$category",
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      throw Exception("There are an error, try again");
    }
  }
}
