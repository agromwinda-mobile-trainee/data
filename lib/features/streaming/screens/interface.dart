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
    _controller = VideoPlayerController.asset('assets/video/video.mp4');

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_controller),
                    //  _ControlsOverlay(controller: _controller),
                    VideoProgressIndicator(_controller, allowScrubbing: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}



// class _PlayerVideoAndPopPage extends StatefulWidget {
//   @override
//   _PlayerVideoAndPopPageState createState() => _PlayerVideoAndPopPageState();
// }

// class _PlayerVideoAndPopPageState extends State<_PlayerVideoAndPopPage> {
//   late VideoPlayerController _videoPlayerController;
//   bool startedPlaying = false;

//   @override
//   void initState() {
//     super.initState();

//     _videoPlayerController =
//         VideoPlayerController.asset('assets/video/video.mp4');
//     _videoPlayerController.addListener(() {
//       if (startedPlaying && !_videoPlayerController.value.isPlaying) {
//         Navigator.pop(context);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     super.dispose();
//   }

//   Future<bool> started() async {
//     await _videoPlayerController.initialize();
//     await _videoPlayerController.play();
//     startedPlaying = false;
//     return true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(
//         child: FutureBuilder<bool>(
//           future: started(),
//           builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//             if (snapshot.data ?? false) {
//               return AspectRatio(
//                 aspectRatio: _videoPlayerController.value.aspectRatio,
//                 child: VideoPlayer(_videoPlayerController),
//               );
//             } else {
//               return const Text('waiting for video to load');
//             }
//           },
//         ),
//       ),
//     );
 // }
//}
