//import 'package:datatv/features/streaming/screens/arroundvideo/bottomvideo.dart';
//import 'package:datatv/features/streaming/screens/arroundvideo/undervideo.dart';
import 'package:datatv/features/streaming/screens/videos/vIdeohome.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../screens/direct.dart';
import 'arroundvideo/bottomvideo.dart';
import 'arroundvideo/undervideo.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            //video(),
           // BlinkingToastWidget(),
            Homevideo(),
            Text(
              "pause MUSIQuE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.left,
            )
            // Expanded(
            //   child: BottomVideo(),
            // )
          ],
        ),
      ),
    );
  }
}
