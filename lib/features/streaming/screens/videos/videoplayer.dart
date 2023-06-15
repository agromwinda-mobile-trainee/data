import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ButterFlyAssetVideo extends StatefulWidget {
  const ButterFlyAssetVideo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButterFlyAssetVideoState createState() => _ButterFlyAssetVideoState();
}

class _ButterFlyAssetVideoState extends State<ButterFlyAssetVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/alex.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //@override
  Widget volumee(BuildContext context) {
    return _controller.value.isInitialized
        ? GestureDetector(
            onTap: () {
              setState(() {
                _controller.value.volume == 0.0
                    ? _controller.setVolume(1.0)
                    : _controller.setVolume(0.0);
              });
            },
            child: const Icon(
              //   _controller.value.volume==0 ?
              Icons.volume_up, color: Colors.white,
              // :Icons.volume_off
            ),
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          children: <Widget>[
            VideoPlayer(_controller),
            Container(
              alignment: Alignment.bottomCenter,
              child: VideoProgressIndicator(_controller, allowScrubbing: true),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 10, 52, 86)),
                      shape: MaterialStatePropertyAll(CircleBorder()),
                      minimumSize: MaterialStatePropertyAll(Size.square(4))),
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                )),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: volumee(context),
            )
          ],
        ),
      ),
    );
  }
}

//  Container(
//       child: 
//        Column(
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.only(top: 20.0),
//           ),
//           Container(
//             padding: const EdgeInsets.all(20),
//             child: AspectRati   aspectRatio: _controller.value.aspectRatio,
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: <Widget>[
//                   VideoPlayer(_controller),
//                   //  _ControlsOverlay(controller: _controller),
//                   VideoProgressIndicator(_controller, allowScrubbing: true),
//                   // const IconButton(
//                   //     onPressed: null,
//                   //     icon: Icon(
//                   //       Icons.volume_off,
//                   //     )),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (_controller.value.isPlaying) {
//               _controller.pause();
//             } else {
//               _controller.play();
//             }
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );