import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_models.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListViews extends StatefulWidget {
  const NewsListViews({super.key});

  @override
  State<NewsListViews> createState() => _NewsListViewsState();
}

class _NewsListViewsState extends State<NewsListViews> {
  List<ArticleModel> articles = [];

  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getnews();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }));
  }
}
