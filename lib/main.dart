import 'package:flutter/material.dart';
import 'package:tawsel/ui/screen/neworder.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final scafoldkey = GlobalKey<ScaffoldMessengerState>();
   MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scafoldkey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
            primarySwatch: Colors.blue,
      ),
      home:   const Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child:  NewOrder(title: "طلب جديد",)
        //OrderDetails(title:Variable.productDetails,order: Variable.order,),
        //NewOrder(title: Variable.newOrderPageText ),
      ),
    );
  }
}



