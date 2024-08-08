import 'package:dio/dio.dart';
import 'package:news_app/models/artical_models.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=9a2d07d63dfc4eb5a3c4204a9ece7b72');

    Map<String, dynamic> JosonData = response.data;

    List<dynamic> articles = JosonData['articles'];

    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
