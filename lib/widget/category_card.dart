// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/models/category_models.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModels categoryModels;
  const CategoryCard({
    Key? key,
    required this.categoryModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 95,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage(categoryModels.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            categoryModels.categoryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
