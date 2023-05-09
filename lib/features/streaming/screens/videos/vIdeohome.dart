import 'package:datatv/features/streaming/screens/videos/videoplayer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Homevideo extends StatelessWidget {
  const Homevideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        padding: const EdgeInsets.all(16.0),
        child: const ButterFlyAssetVideo());
  }
}
