import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer(
      this.colorName1,
      this.colorName2,
      this.colorName3,
      this.l,
      this.x,
      this.y,
      this.z,
      this.m,
      this.onChanged,
      this.color1,
      this.color2,
      this.color3,
      this.color4,
      this.color5,
      this.color6,
      this.ch1,
      this.ch2,
      this.ch3,
      this.visible,
      this.isVisibile);
  final String colorName1;
  final String colorName2;
  final String colorName3;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Color color6;
  final String ch1, ch2, ch3;
  final Function onChanged;
  final bool visible;
  final bool isVisibile;
  final int x, y, z, m;
  final int l;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 700.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
        color: Colors.deepOrange[200],
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: color4,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                            child: Text(
                          colorName1,
                          style: TextStyle(
                            color: color4,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ]),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                '+',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    color: color5, borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                          child: Text(
                            colorName2,
                            style: TextStyle(
                              color: color5,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(width: 10.0),
              Text(
                '=',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                width: 10.0,
              ),
              Visibility(
                visible: visible,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      color: color4, borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Center(
                            child: Text(
                          colorName3,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: color6,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isVisibile,
                child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Center(
                              child: Icon(
                            Icons.close,
                            size: 25.0,
                          )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: 30.0,
            width: 200.0,
            color: Colors.white,
            child: Center(
              child: DropdownButton(
                value: l,
                onChanged: onChanged,
                items: [
                  DropdownMenuItem(
                    child: Text('pick a color'),
                    value: x,
                  ),
                  DropdownMenuItem(
                    child: Text(ch1),
                    value: y,
                  ),
                  DropdownMenuItem(
                    child: Text(ch2),
                    value: z,
                  ),
                  DropdownMenuItem(
                    child: Text(ch3),
                    value: m,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
