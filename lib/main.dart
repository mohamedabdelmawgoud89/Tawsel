import 'package:flutter/material.dart';
import 'core/constant/variable.dart';
import 'ui/screen/neworder.dart';
import 'ui/screen/orderdetail.dart';


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
      home: const Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child:  NewOrder(title: "طلب جديد",)
        //OrderDetails(title:Variable.productDetails,order: Variable.order,),
      ),
    );
  }
}



