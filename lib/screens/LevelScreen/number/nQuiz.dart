import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_children/components/numbers.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'dart:math';

import '../level1_screen.dart';

Numbers numbers = Numbers();

class NQuiz extends StatefulWidget {
  static const String id = 'Number_Quiz';
  @override
  _NQuizState createState() => _NQuizState();
}

class _NQuizState extends State<NQuiz> {
  List<Icon> score = [];
  bool _hasSpeech = false;
  double level = 0.0;
  double minSoundLevel = 50000;
  double maxSoundLevel = -50000;
  String lastWords = '';
  String lastError = '';
  String lastStatus = '';
  String _currentLocaleId = '';
  int resultListened = 0;
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    super.initState();
    initSpeechState();
  }

  Future<void> initSpeechState() async {
    var hasSpeech = await speech.initialize();
    if (hasSpeech) {
      var systemLocale = await speech.systemLocale();
      _currentLocaleId = systemLocale.localeId;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * .05,
              ),
              Container(
                height: size.height * .14,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text(
                    'Numbers Quiz',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
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
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Center(
                    child: Container(
                      height: 400.0,
                      width: 250.0,
                      child: new Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green[0200],
                                borderRadius: BorderRadius.circular(20)),
                            margin: const EdgeInsets.only(top: 50.0),
                            child: SizedBox(
                                height: 400.0,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 50.0,
                                      ),
                                      Container(
                                        height: 40.0,
                                        width: 230,
                                        decoration: BoxDecoration(
                                          color: Colors.green[300],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: TextButton(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Record Your Answer',
                                                  style: TextStyle(
                                                      color: Colors.grey[100],
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 17,
                                                ),
                                                Icon(
                                                  Icons.record_voice_over_sharp,
                                                  color: Colors.grey[100],
                                                ),
                                              ],
                                            ),
                                            onPressed: () {
                                              if (!_hasSpeech ||
                                                  speech.isListening) {
                                                startListening();
                                              }
                                            }),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Expanded(
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Colors.white),
                                              height: 40.0,
                                              width: 130.0,
                                              child: Center(
                                                child: Text(
                                                  lastWords,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              bottom: 1,
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: .26,
                                                          spreadRadius:
                                                              level * 1.5,
                                                          color: Colors.black
                                                              .withOpacity(.05))
                                                    ],
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50)),
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(Icons.mic),
                                                    onPressed: () => null,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        height: 30.0,
                                        width: 100.0,
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              if (lastWords ==
                                                  numbers.numbers[numbers.q]) {
                                                score.add(Icon(
                                                  Icons.check,
                                                  color: Colors.green,
                                                  size: 20.0,
                                                ));
                                              } else {
                                                score.add(Icon(Icons.close,
                                                    color: Colors.red,
                                                    size: 20.0));
                                              }
                                            });
                                            numbers.next();
                                          },
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: score,
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Positioned(
                            top: .0,
                            left: .0,
                            right: .0,
                            child: Center(
                              child: CircleAvatar(
                                radius: 50.0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black87,
                                  radius: 70.0,
                                  child: Center(
                                    child: Text(
                                      numbers.numbers[numbers.q],
                                      style: TextStyle(
                                          fontSize: 60.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Level1.id);
                },
                child: Container(
                  color: Colors.black54,
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
      ),
    );
  }

  void startListening() {
    lastWords = '';
    speech.listen(
        onResult: resultListener,
        listenFor: Duration(seconds: 5),
        pauseFor: Duration(seconds: 5),
        partialResults: false,
        localeId: _currentLocaleId,
        onSoundLevelChange: soundLevelListener,
        cancelOnError: true,
        listenMode: ListenMode.confirmation);
    setState(() {});
  }

  void resultListener(SpeechRecognitionResult result) {
    ++resultListened;
    print('Result listener $resultListened');
    setState(() {
      lastWords = '${result.recognizedWords}';
    });
  }

  void soundLevelListener(double level) {
    minSoundLevel = min(minSoundLevel, level);
    maxSoundLevel = max(maxSoundLevel, level);
    // print("sound level $level: $minSoundLevel - $maxSoundLevel ");
    setState(() {
      this.level = level;
    });
  }
}
//   CircleAvatar(
//     child: Text('$x'),
//   ),
//   TextField(
//     onChanged: (value) {
//       answer = value;
//     },
//   ),
//   FlatButton(
//       child: Text('Check your answer'),
//       onPressed: () {
//         setState(() {
//           if (numbers.numbers[numbers.q] == answer || numbers.num[numbers.q] == answer) {
//             visible = true;
//             isVisible = false;
//           } else {
//             visible = false;
//             isVisible = true;
//           }
//         });
//       }),
//   Visibility(
//     visible: visible,
//     child: Text('Good for you'),
//   ),
//   Visibility(
//     visible: isVisible,
//     child: Text('Fuck You'),
//   ),
//   FlatButton(
//       onPressed: () {
//         setState(() {
//           numbers.next();
//           answer = null;
//           visible = false;
//           isVisible = false;
//         });
//       },
//       child: Text('Next'))