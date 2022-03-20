import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorList{
  int num = 0;
  List<AssetImage> colorList = [
    AssetImage('images/red.png'), AssetImage('images/yellow.png'), AssetImage('images/green.png'),
    AssetImage('images/blue.png'), AssetImage('images/purple.png'), AssetImage('images/pink.png'),
    AssetImage('images/white.png'), AssetImage('images/orange.png'), AssetImage('images/grey.png'),
  ];
  List<Color> cList1 = [
    Colors.red,Colors.yellow,Colors.green,
    Colors.blue,Colors.purple,Colors.pink,
    Colors.white,Colors.orange,Colors.grey[700],
  ];
  List<Color> cList2 = [
    Colors.white,Colors.deepOrange,Colors.yellow,
    Colors.grey[900],Colors.white,Colors.black,
    Colors.black,Colors.white,Colors.brown[100],
  ];
  List<String> colorname = [
    'red', 'yellow', 'green', 'blue', 'purple', 'pink', 'white', 'orange', 'grey'
  ];
  List<String> colorName = [
    'Red', 'Yellow', 'Green', 'Blue', 'Purple', 'Pink', 'White', 'Orange', 'Grey'
  ];
  void next(){
    if (num <= colorList.length -2){
      num++;
    }
  }
}

