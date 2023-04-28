import 'package:datatv/features/article/data/local_data.dart';
import 'package:datatv/features/article/screens/article.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:datatv/features/article/screens/detail-article/caroussel_application.dart';

class DetailArticle extends StatelessWidget {
  const DetailArticle({super.key, required this.article});
  final Map article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 245, 245),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 18,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Carousel(images: article["images"]),
    );
  }
}
