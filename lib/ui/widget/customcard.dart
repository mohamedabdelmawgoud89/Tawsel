import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tawsel/core/constant/variable.dart';
import '../../core/constant/color.dart';
import '../../core/constant/style.dart';
import '../../model/order.dart';


class CustomCard extends StatelessWidget{
  const CustomCard({
    required this.order,
    });
  final Order order;
  @override
  Widget build(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.white,
    elevation: 15,
    child: Padding(
      padding:const EdgeInsets.all(20) ,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text('رقم الطلب #${order.orderNumber}',style: Style.style1),
              Text(order.orderStatus,style: Style.style3)
            ],
          ),
          const Divider(
            thickness: 0.5,
          ),
          ListTile(
            horizontalTitleGap: -18,
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Icons.location_on,
              color: ConstantColor.orange,
              size: 15,
            ),
            title: Text(Variable.customerList[0].address),
          ),
          ListTile(
            horizontalTitleGap: -18,
            contentPadding: const EdgeInsets.all(0),
            leading: const Icon(
              Icons.access_time,
              size: 15,
            ),
            title: Row
              (
                children:
                [
              Text(
             '${DateFormat.yM().format(order.date).toString()}/',style: Style.style2
              ),
              Text(DateFormat.d().format(order.date).toString(),style: Style.style2),
              Text(',${DateFormat.jm().format(order.date).toString()}',style: Style.style2),
            ]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text(': التكلفة',style: Style.style2),
              Text('${order.price} ج.م ',style: Style.style1)
            ],
          ),
        ],
      ),
    ),
  );
  }

}