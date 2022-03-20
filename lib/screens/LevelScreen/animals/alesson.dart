import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/animals/avideo.dart';

class AnLesson extends StatefulWidget {
  static const String id = 'anLesson';
  @override
  _AnLessonState createState() => _AnLessonState();
}

class _AnLessonState extends State<AnLesson> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 0100.0,
            ),
            Center(
              child: Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AVideo.id);
                  },
                  child: Text('1. Watch the video'),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AVideo.id);
                  },
                  child: Text(
                    '2. Start the lesson',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
