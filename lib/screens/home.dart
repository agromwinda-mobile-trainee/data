import 'package:datatv/features/article/screens/article.dart';
import 'package:datatv/features/streaming/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'menu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Colors.blue,
            tabs: [
              Tab(
                text: "EN DIRECT",
              ),
              Tab(
                text: "A LA UNE",
              ),
              Tab(
                text: "ARTICLE",
              ),
              Tab(
                text: "RECAP",
              ),
            ],
          ),
          shadowColor: Colors.white,
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 25),
              width: 110,
              height: 40,
              child: Image.asset(
                'assets/img/logoo.png',
                fit: BoxFit.contain,
                height: 30,
              ),
            )
          ],
          backgroundColor: const Color.fromARGB(255, 46, 37, 64),
        ),
        body: const TabBarView(children: [
          Homescreens(),
          Article(),
          Article(),
          Article(),
        ]),
      ),
    );
  }
}
