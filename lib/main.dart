import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aQuiz.dart';
import 'package:smart_children/screens/LevelScreen/alpha/aWatch.dart';
import 'package:smart_children/screens/LevelScreen/alpha/lesson.dart';
import 'package:smart_children/screens/LevelScreen/alpha/lessons.dart';
import 'package:smart_children/screens/LevelScreen/animals/alesson.dart';
import 'package:smart_children/screens/LevelScreen/animals/animals.dart';
import 'package:smart_children/screens/LevelScreen/animals/anquiz.dart';
import 'package:smart_children/screens/LevelScreen/animals/avideo.dart';
import 'package:smart_children/screens/LevelScreen/color/quizlist.dart';
import 'package:smart_children/screens/LevelScreen/color/second.dart';
import 'package:smart_children/screens/LevelScreen/level1_screen.dart';
import 'package:smart_children/screens/LevelScreen/alpha/levelAlphabet.dart';
import 'package:smart_children/screens/LevelScreen/color/levelColors.dart';
import 'package:smart_children/screens/LevelScreen/number/levelNumber.dart';
import 'package:smart_children/screens/LevelScreen/number/nQuiz.dart';
import 'package:smart_children/screens/LevelScreen/number/nWatch.dart';
import 'package:smart_children/screens/LevelScreen/color/quiz.dart';
import 'package:smart_children/screens/LevelScreen/color/watch.dart';
import 'package:smart_children/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Level1.id: (context) => Level1(),
        LevelColor.id: (context) => LevelColor(),
        Quiz.id: (context) => Quiz(),
        Watch.id: (context) => Watch(),
        LevelAlphabet.id: (context) => LevelAlphabet(),
        AQuiz.id: (context) => AQuiz(),
        AWatch.id: (context) => AWatch(),
        LevelNumber.id: (context) => LevelNumber(),
        NWatch.id: (context) => NWatch(),
        NQuiz.id: (context) => NQuiz(),
        Second.id: (context) => Second(),
        Lessons.id: (context) => Lessons(),
        Lesson.id: (context) => Lesson(),
        QuizList.id: (context) => QuizList(),
        Animals.id: (context) => Animals(),
        AnLesson.id: (context) => AnLesson(),
        AnQuiz.id: (context) => AnQuiz(),
        AVideo.id: (context) => AVideo(),
      },
    );
  }
}
