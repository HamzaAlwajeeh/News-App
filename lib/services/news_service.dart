import 'package:dio/dio.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    var response = await dio.get(kSportsNews);

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article["urlToImage"],
        title: article["title"],
        subTitle: article["description"],
      );
      articlesList.add(articleModel);
    }

    return articlesList;
  }
}
