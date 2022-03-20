import 'package:flutter/material.dart';
import 'package:native_video_view/native_video_view.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aQuiz.dart';

class AWatch extends StatefulWidget {
  static const String id = 'AWatch';
  @override
  _AWatchState createState() => _AWatchState();
}

class _AWatchState extends State<AWatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
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
                  controller.setVideoSource('videos/Alphabets.mp4',
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
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AQuiz.id);
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
