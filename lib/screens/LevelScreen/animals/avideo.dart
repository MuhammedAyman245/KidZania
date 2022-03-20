import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';
import 'package:smart_children/screens/LevelScreen/animals/anquiz.dart';

class AVideo extends StatefulWidget {
  static const String id = 'Animal Video';
  @override
  _AVideoState createState() => _AVideoState();
}

class _AVideoState extends State<AVideo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10.0,
              ),
              NativeVideoView(
                keepAspectRatio: true,
                showMediaController: true,
                enableVolumeControl: true,
                onCreated: (controller) {
                  controller.setVideoSource('videos/Animals.mp4',
                      sourceType: VideoSourceType.asset);
                },
                onPrepared: (controller, info) {
                  controller.play();
                },
                onError: (controller, what, extra, message) {
                  print('Player Error ($what | $extra | $message)');
                },
                onCompletion: (controller) {
                  print('Video completed');
                },
                onProgress: (progress, duration) {
                  print('$progress | $duration');
                },
              ),
              Container(
                width: double.infinity,
                height: 80.0,
                color: Colors.greenAccent,
                child: TextButton(
                  child: Text(
                    'Start The Quiz',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AnQuiz.id);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
