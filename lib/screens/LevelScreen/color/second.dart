import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/components/mcq.dart';
import 'package:smart_children/screens/LevelScreen/level1_screen.dart';

class Second extends StatefulWidget {
  static const String id = 'secondQuiz';
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int realValue1 = 1;
  int realValue2 = 1;
  int realValue3 = 1;
  int realValue4 = 1;
  int realValue5 = 1;
  bool visible1 = false;
  bool isVisible1 = false;
  bool visible2 = false;
  bool isVisible2 = false;
  bool visible3 = false;
  bool isVisible3 = false;
  bool visible4 = false;
  bool isVisible4 = false;
  bool visible5 = false;
  bool isVisible5 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange[50],
        body: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 0, 10),
              child: Text(
                'Choose the correct color:',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyContainer(
                  'Red', 'Blue', 'purple', realValue1, 1, 2, 3, 4, (value) {
                setState(() {
                  realValue1 = value;
                  if (value == 4) {
                    visible1 = true;
                    isVisible1 = false;
                  } else {
                    visible1 = false;
                    isVisible1 = true;
                  }
                });
              },
                  Colors.red,
                  Colors.blue[900],
                  Colors.purple,
                  Colors.black,
                  Colors.white,
                  Colors.black,
                  'black',
                  'brown',
                  'purple',
                  visible1,
                  isVisible1),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyContainer(
                  'White', 'Black', 'Grey', realValue2, 1, 2, 3, 4, (value) {
                setState(() {
                  realValue2 = value;
                  if (value == 2) {
                    visible2 = true;
                    isVisible2 = false;
                  } else {
                    visible2 = false;
                    isVisible2 = true;
                  }
                });
              },
                  Colors.white,
                  Colors.black,
                  Colors.grey[800],
                  Colors.black,
                  Colors.white,
                  Colors.black,
                  'grey',
                  'yellow',
                  'brown',
                  visible2,
                  isVisible2),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyContainer('White', 'Red', 'Pink', realValue3, 1, 2, 3, 4,
                  (value) {
                setState(() {
                  realValue3 = value;
                  if (value == 3) {
                    visible3 = true;
                    isVisible3 = false;
                  } else {
                    visible3 = false;
                    isVisible3 = true;
                  }
                });
              },
                  Colors.white,
                  Colors.red[600],
                  Colors.pink,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  'yellow',
                  'pink',
                  'green',
                  visible3,
                  isVisible3),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyContainer(
                  'Green', 'Blue', 'Yellow', realValue4, 1, 2, 3, 4, (value) {
                setState(() {
                  realValue4 = value;
                  if (value == 2) {
                    visible4 = true;
                    isVisible4 = false;
                  } else {
                    visible4 = false;
                    isVisible4 = true;
                  }
                });
              },
                  Colors.green,
                  Colors.blue[900],
                  Colors.yellow,
                  Colors.black,
                  Colors.white,
                  Colors.black,
                  'yellow',
                  'brown',
                  'black',
                  visible4,
                  isVisible4),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyContainer(
                  'Orange', 'Black', 'Brown', realValue5, 1, 2, 3, 4, (value) {
                setState(() {
                  realValue5 = value;
                  if (value == 2) {
                    visible5 = true;
                    isVisible5 = false;
                  } else {
                    visible5 = false;
                    isVisible5 = true;
                  }
                });
              },
                  Colors.orange,
                  Colors.black,
                  Colors.brown,
                  Colors.black,
                  Colors.white,
                  Colors.black,
                  'brown',
                  'yellow',
                  'black',
                  visible5,
                  isVisible5),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Level1.id);
              },
              child: Container(
                color: Colors.red,
                height: 50,
                child: Center(
                    child: Text(
                  'Back To home',
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
