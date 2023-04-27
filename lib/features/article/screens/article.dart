import 'package:datatv/features/article/screens/widget.dart';
import 'package:flutter/material.dart';

import '../data/local_data.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(25),
      children: <Widget>[
        cardArticle(images[0]),
        cardArticle(images[1]),
        cardArticle(images[2]),
      ],
    );
  }
}
