import 'package:flutter/material.dart';
import 'package:tawsel/ui/screen/slider_intro.dart';
import 'core/constant/variable.dart';
import 'ui/screen/neworder.dart';
import 'ui/screen/orderdetail.dart';
import 'ui/screen/testradio.dart';


void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
            primarySwatch: Colors.blue,
      ),
      home:  SliderIntro(),
    );
  }
}



