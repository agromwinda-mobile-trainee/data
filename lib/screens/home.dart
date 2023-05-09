import 'package:datatv/features/article/screens/article.dart';
import 'package:datatv/features/streaming/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'darkmode.dart';

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
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.podcasts_rounded,
                  color: Colors.red,
                ),
                text: 'EN DIRECT',
              ),
              Tab(
                text: 'A LA UNE',
              ),
              Tab(
                text: 'ARTICLE',
              ),
              Tab(
                text: 'RECAP',
              ),
            ],
          ),
          shadowColor: Colors.white,
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
              const Padding(
                padding: EdgeInsets.only(left: 100),
              ),
            ],
          ),
          // actions: [IconButton(onPressed: null, icon: Icon(Icons.color_lens))],
          backgroundColor: Colors.white,
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
