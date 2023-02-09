import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Style {
  static const TextStyle style1 = TextStyle(
    height: 2,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
    fontFamily: 'PlayfairDisplaySC-BlackItalic',
  );
  static ThemeData def = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
          height: 2,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.orangeAccent,
          fontSize:18,
        )),
    fontFamily: 'PlayfairDisplay',

  );
  static ThemeData englishTheme = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
      height: 2,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: Colors.pink,
      fontSize:18,
    )),
    fontFamily: 'PlayfairDisplay',
    backgroundColor: Colors.orange,
    primaryColor: Colors.tealAccent,
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.tealAccent,

  );
  static ThemeData arabicTheme = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
          height: 2,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
          fontSize: 12,
        )),
    fontFamily: 'Cairo',
    backgroundColor: Colors.orange,
    primaryColor: Colors.teal,
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.pink,
  );
}
