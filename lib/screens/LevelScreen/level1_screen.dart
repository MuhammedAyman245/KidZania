import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/screens/LevelScreen/alpha/levelAlphabet.dart';
import 'package:smart_children/screens/LevelScreen/color/levelColors.dart';
import 'package:smart_children/screens/LevelScreen/number/levelNumber.dart';
import 'package:smart_children/screens/LevelScreen/animals/animals.dart';

class Level1 extends StatefulWidget {
  static const String id = 'level1_screen';

  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/wall.png'), fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '- Lessons -',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(context, LevelColor.id);
                            });
                          },
                          child: Container(
                            height: 240.0,
                            width: 170.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 216, 20, 0),
                              child: Text(
                                'Colors',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/colorr.png'),
                                    fit: BoxFit.fill),
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(context, LevelNumber.id);
                            });
                          },
                          child: Container(
                            height: 240.0,
                            width: 170.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25,
                                ),
                                Image(
                                    image: AssetImage('images/numberr.png'),
                                    fit: BoxFit.fill),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(00, 5, 0, 0),
                                  child: Text(
                                    'Numbers',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(context, LevelAlphabet.id);
                            });
                          },
                          child: Container(
                            height: 240.0,
                            width: 170.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Image(
                                    image: AssetImage('images/alphabett.png'),
                                    fit: BoxFit.fill),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Alphabets',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(context, Animals.id);
                            });
                          },
                          child: Container(
                            height: 240.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Image(
                                    image: AssetImage('images/animals.png'),
                                    fit: BoxFit.fill),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 5, 0),
                                  child: Text(
                                    'Animals',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
