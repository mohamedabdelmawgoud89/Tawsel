import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';


class Style {
  static const TextStyle style1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Color(0XFF191919),
    fontFamily: 'Cairo-Bold',
  );
  static const TextStyle style2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0XFF939393),
    fontFamily: 'Cairo-Black',
  );
  static const TextStyle style3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xffFF6600),
    fontFamily: 'Cairo-Black',
  );
  static  TextStyle style4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ConstantColor.white,
    fontFamily: 'Cairo-Black',
  );
  static  TextStyle style5 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Cairo-Black',
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
