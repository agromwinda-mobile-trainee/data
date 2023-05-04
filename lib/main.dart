import 'package:datatv/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fijkplayer/fijkplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Data tv',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Homescreen());
  }
}
