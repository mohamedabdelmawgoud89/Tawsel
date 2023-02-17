import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/function/customappbar.dart';
import '../widget/customcontainerforaddingnewproduct.dart';
import '../widget/customcontainerfororderdetails.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({Key? key, required this.title}) : super(key: key);
  final String title;
  final space = const SizedBox(
    height: 5,
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double toolbarHeight = height*0.10;
    return Scaffold(
      appBar:CustomAppBar.showAppBar(title: title,height: toolbarHeight),
      body: SingleChildScrollView(
        child:Column(
          children: [
            CustomContainerForProduct(),
            CustomContainerForOrder(),

          ],
        )
      ),
    );
  }
}
