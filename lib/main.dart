import 'package:datatv/screens/darkmode.dart';
import 'package:datatv/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fijkplayer/fijkplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data tv',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homescreen(),
    );
  }
}
