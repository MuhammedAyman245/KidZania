import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_children/components/colorList.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'dart:math';

class Quiz extends StatefulWidget {
  static const String id = 'quiz';
  @override
  _QuizState createState() => _QuizState();
}

ColorList colorList = ColorList();

class _QuizState extends State<Quiz> {
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
  List<Icon> score = [];
  int x = 0;
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text(
              'Quiz one',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Center(
          child: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Choose the right color:',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        height: 500.0,
                        width: 300.0,
                        child: new Stack(
                          children: <Widget>[
                            Card(
                              color: Colors.white,
                              margin: const EdgeInsets.only(top: 50.0),
                              child: SizedBox(
                                  height: 400.0,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 40.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Container(
                                          height: 240.0,
                                          width: 250.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color:
                                                colorList.cList1[colorList.num],
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 20.0),
                                              Container(
                                                height: 50.0,
                                                width: 210.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: TextButton(
                                                  onPressed: () {
                                                    if (!_hasSpeech ||
                                                        speech.isListening) {
                                                      startListening();
                                                    }
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Record Your Answer',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[600],
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        width: 17,
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .record_voice_over_sharp,
                                                        color: Colors.grey[600],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    color: Colors.white),
                                                height: 40.0,
                                                width: 100.0,
                                                child: Center(
                                                  child: Text(
                                                    lastWords,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30.0,
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
                                                                .withOpacity(
                                                                    .05))
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
                                        Container(
                                          height: 50.0,
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            color:
                                                colorList.cList1[colorList.num],
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: TextButton(
                                            child: Text('Next Color',
                                                style: TextStyle(
                                                  color: colorList
                                                      .cList2[colorList.num],
                                                )),
                                            onPressed: () {
                                              setState(() {
                                                if (lastWords ==
                                                        colorList.colorname[
                                                            colorList.num] ||
                                                    lastWords ==
                                                        colorList.colorName[
                                                            colorList.num]) {
                                                  x++;
                                                  score.add(Icon(
                                                    Icons.check,
                                                    color: Colors.green,
                                                  ));
                                                } else {
                                                  score.add(Icon(
                                                    Icons.close,
                                                    color: Colors.red,
                                                  ));
                                                }
                                                print('$x');
                                                colorList.next();
                                                //answer = null;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        // Container(
                                        //   height: 50.0,
                                        //   width: 150.0,
                                        //   decoration: BoxDecoration(
                                        //     color: Colors.yellow,
                                        //     borderRadius:
                                        //         BorderRadius.circular(10.0),
                                        //   ),
                                        //   child: FlatButton(
                                        //     child: Text('get the score',
                                        //         style: TextStyle(
                                        //           color: Colors.black,
                                        //         )),
                                        //     onPressed: () {
                                        //       print('answer');
                                        //       setState(() {
                                        //         print('$x');
                                        //         visible = true;
                                        //       });
                                        //     },
                                        //   ),
                                        // ),
                                        Row(
                                          children: score,
                                        ),
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
                                      backgroundColor: Colors.blueGrey[200],
                                      radius: 70.0,
                                      backgroundImage:
                                          colorList.colorList[colorList.num]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

// make them images not colors
// add more colors
// improve score function
// start a new quiz
