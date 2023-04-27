import 'package:datatv/features/article/screens/detail-article/detail_article.dart';
import 'package:flutter/material.dart';

Widget cardArticle(context, Map article) {
  return Stack(children: [
    Container(
      width: 600,
      height: 250,
      child: Image.asset(article['image']),
    ),
    Container(
        height: 210,
        width: 300,
        padding: const EdgeInsets.only(left: 30),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            const Color.fromARGB(255, 206, 204, 204).withAlpha(0),
            Colors.black12,
            Colors.black45
          ],
        )),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailArticle(
                        article: article,
                      )),
            );
          },
          child: Text(
            article['text'],
            style: const TextStyle(color: Colors.white, fontSize: 20.0),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )),
    Container(
        width: 20,
        height: 205,
        padding: const EdgeInsets.only(top: 0),
        alignment: Alignment.bottomLeft,
        child: const Icon(
          Icons.video_camera_back,
          color: Colors.blue,
        )),
  ]);
}
