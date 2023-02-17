import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawsel/core/constant/color.dart';
import 'package:tawsel/core/constant/imgeassets.dart';
import 'package:tawsel/core/function/customappbar.dart';
import 'package:tawsel/ui/widget/Customerdetails.dart';
import 'package:tawsel/ui/widget/productdetails.dart';
import '../../core/constant/style.dart';
import '../../model/order.dart';
import '../widget/customcard.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({Key? key, required this.title, required this.order})
      : super(key: key);
  final String title;
  Order order;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: CustomAppBar.showAppBar(title: title),
        body: ListView(children: [
          Container(
              color: ConstantColor.gray,
              width: double.infinity,
              height: height * 0.35,
              padding: EdgeInsets.symmetric(horizontal: width - (width - 20)),
              child: CustomCard(order: order,)),
          Padding(
            padding: EdgeInsets.all(width - (width - 20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageAssets.cancel,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('سبب الإلغاء', style: Style.style1),
                        Text("العميل رفض الطلب", style: Style.style2),
                      ],
                    ),
                  ],
                ),
                ProductDetails(
                  prodcutList: order.product,
                ),
                const Divider(
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomerDetails(
                  customer: order.customer,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      side: const BorderSide(color: Colors.blue)),
                  onPressed: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.wifi_calling_3_outlined,
                          color: Colors.blue,
                        ),
                        Text(
                          "اتصال بالعميل",
                          style: TextStyle(color: Colors.blue),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
                Center(child: Image.asset(ImageAssets.homeIndicator)),
              ],
            ),
          )
        ]));
  }
}
