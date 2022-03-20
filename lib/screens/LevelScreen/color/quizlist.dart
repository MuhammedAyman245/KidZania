import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_children/screens/LevelScreen/color/quiz.dart';
import 'package:smart_children/screens/LevelScreen/color/second.dart';

class QuizList extends StatefulWidget {
  static const String id = 'id';
  @override
  _QuizListState createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: ListView(
          children: [
            SizedBox(
              height: size.height * .1,
            ),
            Container(
              height: size.height * .2,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios_outlined),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      width: size.width * .04,
                    ),
                    Text(
                      'Quiz List',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                height: size.height * .7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 80.0,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Quiz.id);
                          },
                          child: Text(
                            '1. Quiz one Color sensing',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Container(
                        height: 80.0,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Second.id);
                          },
                          child: Text(
                            '2. Quiz two Color mixing',
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
