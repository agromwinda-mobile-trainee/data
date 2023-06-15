import 'package:datatv/features/streaming/screens/videos/videoplayer.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Homevideo extends StatelessWidget {
  const Homevideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: const ButterFlyAssetVideo(),
    );
  }
}
