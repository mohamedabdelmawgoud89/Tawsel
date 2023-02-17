import 'package:flutter/material.dart';
import 'package:tawsel/core/constant/color.dart';
import 'package:tawsel/core/constant/imgeassets.dart';
import 'package:tawsel/core/constant/style.dart';
import 'package:tawsel/ui/widget/button.dart';


class CustomSnackAlert {
  static SnackBar showErrorSnackBar(double margin) {
    return SnackBar(
      elevation: 0,
      backgroundColor: const Color(0XFFFFFFFF),
      margin: EdgeInsets.only(top:margin),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
      content: Column(
        children:  [
          Image.asset(ImageAssets.homeIndicator),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xff15C975),
            ),
            child: const Icon(Icons.check,color: Colors.white,),
          ),
          const Text("تم الإرسال بنجاح",style: TextStyle(color: Color(0XFF262626),fontWeight: FontWeight.bold)),
          const SizedBox(height: 4,),
          const Text("تم إرسال طلبك بنجاح يرجي انتظار الموافقة",style: TextStyle(color: Color(0xff0D0D0D),fontWeight: FontWeight.w400)),
          const SizedBox(height: 8,),
          const Expanded(child: SizedBox()),
           Button(label: "حسنت , فهمت",
               color: ConstantColor.gray,
               style: Style.style5 ,
               onPressed: () {},),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}