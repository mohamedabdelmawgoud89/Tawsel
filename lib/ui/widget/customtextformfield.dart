import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../../core/constant/style.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.label,this.widget}) : super(key: key);
  final String label;
  Widget? widget;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 35,
      child: TextFormField(
        decoration:  InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal:10,vertical: 0),
          filled: true,
          fillColor: ConstantColor.white,
          suffixIcon:widget ?? const Text(""),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFE3E3E3)
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          labelStyle: Style.style2,
          labelText: label,
        ),
      ),
    );
  }
}





