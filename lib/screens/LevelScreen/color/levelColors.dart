import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/color/quizlist.dart';
import 'package:smart_children/screens/LevelScreen/color/watch.dart';

class LevelColor extends StatefulWidget {
  static const String id = 'LevelColor';
  @override
  _LevelColorState createState() => _LevelColorState();
}

class _LevelColorState extends State<LevelColor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/c.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              SizedBox(
                height: 150.0,
              ),
              Center(
                child: Container(
                  height: 40.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextButton(
                    child: Text(
                      'Watch The Video',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Watch.id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Container(
                  height: 40.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextButton(
                    child: Text(
                      'Quiz List',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, QuizList.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
