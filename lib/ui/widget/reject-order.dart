import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawsel/config/colors.dart';
import 'package:tawsel/config/font.dart';

class reject_order extends StatefulWidget {


  @override
  State<reject_order> createState() => _reject_orderState();
}

class _reject_orderState extends State<reject_order> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "سبب الالغاء",
                    style: TextStyle(
                        fontFamily: Fonts.cairo_extraBold, fontSize: 20),
                  ),
                  Text(
                    "العميل رفض الطلب",
                    style: TextStyle(
                        fontFamily: Fonts.cairo_Regular, fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
                width: width * 0.14,
                height: height * 0.07,
                decoration: BoxDecoration(
                  color: colors.shado_red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                    image:
                        AssetImage("asset/Fonts/Icons/fi-rr-cross-circle.png")))
          ],
        ),
        Text(
          "تفاصيل الطلب",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          "المنتجات",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ج.م 60",
                style:
                    TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20)),
            Text("بيتزا ايطالي -جبن:",
                style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 18))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ج.م 60",
                style:
                    TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20)),
            Text("كريب شيش طاووق:",
                style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 18))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ج.م 60",
                style:
                    TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20)),
            Text("برجر لحوم-حار:",
                style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 18))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ج.م 120",
                style: TextStyle(fontFamily: Fonts.cairo_Bold, fontSize: 20)),
            Text("السعر الكلي:",
                style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 18))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("ج.م 40",
                style: TextStyle(fontFamily: Fonts.cairo_Bold, fontSize: 20)),
            Text("خدمه التوصيل:",
                style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 18))
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        Text(
          "بيانات العميل",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          "اسم العميل",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          "ابراهيم خالد احمد",
          style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20),
        ),
        Text(
          "عنوان العميل",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          " شارع44 -السبتيه- القاهره",
          style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20),
        ),
        Text(
          "طريقه الدفع",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          "تم الدفع بالفيزا",
          style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20),
        ),
        Text(
          "رقم العميل",
          style: TextStyle(fontFamily: Fonts.cairo_extraBold, fontSize: 20),
        ),
        Text(
          " 0145220515",
          style: TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 20),
        ),
        OutlinedButton(
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "اتصال بالعميل ",
                  style:
                      TextStyle(fontFamily: Fonts.cairo_Regular, fontSize: 15),
                ),
                Image(image: AssetImage("asset/Fonts/Icons/phone-call.png"))
              ],
            )),
      ],
    ));
  }
}
