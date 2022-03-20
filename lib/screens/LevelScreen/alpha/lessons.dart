import 'package:flutter/material.dart';
import 'package:smart_children/components/container.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aWatch.dart';
import 'package:smart_children/screens/LevelScreen/alpha/lesson.dart';
class Lessons extends StatefulWidget {
  static const String id ='lessons';
  @override
  _LessonsState createState() => _LessonsState();
}
class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 30.0,),
            MyContainer(Colors.blueGrey[200], (){
              Navigator.pushNamed(context, AWatch.id);
            }, 'Watch The Video',),
            SizedBox(height: 20.0,),
            MyContainer(Colors.blue[200], (){
              Navigator.pushNamed(context, Lesson.id);
            }, 'Start The lesson')
          ],
        ),
      ),
    );
  }
}
