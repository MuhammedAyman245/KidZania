import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aQuiz.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aWatch.dart';

class LevelAlphabet extends StatefulWidget {
  static const String id = 'levelAlphabet';
  @override
  _LevelAlphabetState createState() => _LevelAlphabetState();
}

class _LevelAlphabetState extends State<LevelAlphabet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/alphab.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
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
                      'Watch the video',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AWatch.id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
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
                      'Start The Quiz',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AQuiz.id);
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
