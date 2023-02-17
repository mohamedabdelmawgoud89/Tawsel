import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../../core/constant/imgeassets.dart';
import '../../core/constant/style.dart';
import '../../core/constant/variable.dart';
import 'button.dart';
import 'customtextformfield.dart';

class CustomContainerForProduct extends StatelessWidget{
  final space = const SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: ConstantColor.white,
      child: Padding(
        padding:EdgeInsets.all(width - (width - 20)) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                 Text(Variable.products,style: Style.style1,),
                Row(
                  children: const [
                    Icon(Icons.add,color: Colors.orange,),
                    Text(Variable.addProduct,style: Style.style3,)
                  ],),
              ],
            ) ,
            space,
            const Text(Variable.productName,style: Style.style1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(Variable.priceText,style: Style.style2,),
                Text(Variable.price,style: Style.style2,),
              ],),
            space,
            Row(
              children: [
                Image.asset(ImageAssets.delete),
                const Text('حذف'),
                const SizedBox(width: 10,),
                Image.asset(ImageAssets.edit),
                const Text('تعديل'),
              ],
            ),
            space,
            Divider(
              color: ConstantColor.gray,
              thickness: 2,
            ),
            CustomTextFormField(label: 'اسم المنتج',),
            space,
            CustomTextFormField(label: 'سعر المنتج',
                widget:const Text("ج.م",textAlign: TextAlign.center,)),
            space,
            space,
            Button(
              label: "إضافة",
              style: Style.style4,
              color: ConstantColor.green,
              onPressed: () {},
            ),
            space,

          ],
        ),
      ),
    );
  }

}