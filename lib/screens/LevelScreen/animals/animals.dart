import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/animals/anquiz.dart';
import 'package:smart_children/screens/LevelScreen/animals/avideo.dart';

class Animals extends StatefulWidget {
  static const String id = 'animal';
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/animal.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              SizedBox(
                height: 230.0,
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
                      'Lesson',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AVideo.id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 138.0,
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
                      'Quiz',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AnQuiz.id);
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
