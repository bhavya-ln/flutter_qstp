import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

void main() => runApp(MaterialApp(
     initialRoute: 'page1' ,
     routes: {
      '/': (context) => Q1(),
      '/page2': (context) => Q2(),
      '/page3': (context) => Q3(),
      '/page4': (context) => Q4(),
      '/page5': (context) => Q5()
      }
    ));

