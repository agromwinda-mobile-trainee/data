import 'package:datatv/features/streaming/screens/arroundvideo/bottomvideo.dart';
import 'package:datatv/features/streaming/screens/arroundvideo/undervideo.dart';
import 'package:datatv/features/streaming/screens/videos/vIdeohome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          video(),
          Homevideo(),
          BottomVideo(),
        ],
      ),
    );
  }
}
