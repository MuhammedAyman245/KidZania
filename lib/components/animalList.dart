import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimalList {
  int n = 0;
  List<AssetImage> animalList = [
    AssetImage('images/elephant.png'),
    AssetImage('images/Giraffe.png'),
    AssetImage('images/Monkey.png'),
    AssetImage('images/Crocodile.png'),
    AssetImage('images/Gorilla.png'),
    AssetImage('images/Zebra.png'),
    AssetImage('images/Tiger.png'),
    AssetImage('images/Bear.png'),
    AssetImage('images/Wolf.png'),
  ];
  List<String> Names = [
    'Elephant',
    'Giraffe',
    'Monkey',
    'Crocodile',
    'Gorilla',
    'Zebra',
    'Tiger',
    'Bear',
    'Wolf',
  ];
  List<String> names = [
    'elephant',
    'giraffe',
    'monkey',
    'crocodile',
    'gorilla',
    'zebra',
    'tiger',
    'bear',
    'wolf',
  ];
  void next() {
    if (n < names.length - 1 || n < Names.length - 1) {
      n++;
    } else {
      n = 0;
    }
  }
}
