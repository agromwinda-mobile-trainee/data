import 'package:flutter/material.dart';

class DetailArticle extends StatelessWidget {
  const DetailArticle({super.key, required this.article});
  final Map article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.menu,
              size: 35,
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 100),
            ),
            Center(
                child: Image.asset(
              'assets/img/logoo.png',
              fit: BoxFit.contain,
              height: 42,
            )),
          ],
        ),
      ),
    );
  }
}
