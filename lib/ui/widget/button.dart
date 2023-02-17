import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawsel/core/constant/style.dart';

class Button extends StatelessWidget {
   Button({
    Key? key,
    required this.label,
    required this.color,
    required this.onPressed,
     this.style=Style.style1,
  }) : super(key: key);
  final String label;
  final Color color;
  TextStyle? style;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {

    return   ElevatedButton(
      style: ElevatedButton.styleFrom(
      primary: color,
      minimumSize: const Size.fromHeight(50), // NEW
    ),
      onPressed:(){
        onPressed!();
      },
      child: Text(
        label,style:style ,textAlign: TextAlign.center,),
    );
  }
}





