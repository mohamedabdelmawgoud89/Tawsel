import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../../core/constant/imgeassets.dart';
import '../../core/constant/style.dart';
import '../../core/function/customsnakbar.dart';
import '../screen/snackbarpage.dart';
import 'button.dart';
import 'customtextformfield.dart';


class CustomContainerForOrder extends StatelessWidget{
  final space = const SizedBox(
    height: 5,
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
   return Container(
     color: ConstantColor.gray,
     child: Padding(
       padding: EdgeInsets.all(width - (width - 20)),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           const Text(
             "تفاصيل الطلب",style: Style.style1,
           ),
           space,
           CustomTextFormField(label: 'اسم العميل',),
           space,
           CustomTextFormField(label: 'عنوان العميل',widget:Icon(
             Icons.location_on_outlined ,
             color: ConstantColor.gray2,
           ) ,),
           space,
           CustomTextFormField(label: 'رقم العميل',),
           space,
           CustomTextFormField(label: 'تكلفة التوصيل',),
           space,
           Button(
               label: "إرسال طلب",
               color: ConstantColor.orange,
               style: Style.style4,
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => SnackBarPage()),
                 );
                 ScaffoldMessenger.of(context).showSnackBar(
                     CustomSnackAlert.showErrorSnackBar(
                         MediaQuery.of(context).size.height / 2));
               }),
           Center(child: Image.asset(ImageAssets.homeIndicator)),
         ],
       ),
     ),
   );
  }

}