import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/number/nQuiz.dart';
import 'package:smart_children/screens/LevelScreen/number/nWatch.dart';

class LevelNumber extends StatefulWidget {
  static const String id = 'Level_Number';
  @override
  _LevelNumberState createState() => _LevelNumberState();
}

class _LevelNumberState extends State<LevelNumber> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/n.png'),
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
                      'Watch The Video',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, NWatch.id);
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
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, NQuiz.id);
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
