// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/models/artical_models.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    Key? key,
    required this.articleModel,
  }) : super(key: key);
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          articleModel.image!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      Text(articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )),
      Text(articleModel.subTitle ?? ' ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )),
    ]);
  }
}
