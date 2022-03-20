import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';
import 'package:smart_children/screens/LevelScreen/color/quiz.dart';

class Watch extends StatefulWidget {
  static const String id = 'video';
  @override
  _WatchState createState() => _WatchState();
}

class _WatchState extends State<Watch> {
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
                  controller.setVideoSource('videos/Colors.mp4',
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
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Quiz.id);
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
