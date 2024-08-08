import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widget/category_card.dart';

class CategoryListViews extends StatelessWidget {
  const CategoryListViews({super.key});

  final List<CategoryModels> categories = const [
    CategoryModels(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModels(image: 'assets/sport.jpg', categoryName: 'Sport'),
    CategoryModels(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModels(image: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModels(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return CategoryCard(
              categoryModels: categories[index],
            );
          }),
    );
  }
}
