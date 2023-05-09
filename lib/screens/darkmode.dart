import 'package:flutter/material.dart';
import 'package:datatv/main.dart';

class Darkmode extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Darkmode> {
  bool _isDarkMode = false;
  

  void _toggleDarkMode() { 
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleDarkMode,
        child: const Icon(Icons.color_lens),
      ),
      //theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
