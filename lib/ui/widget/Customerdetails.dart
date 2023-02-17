import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/style.dart';
import '../../model/customer.dart';



class CustomerDetails extends StatelessWidget{
  CustomerDetails({required this.customer});
  Customer customer;
  @override
  Widget build(BuildContext context) {
   return Container(
     alignment: Alignment.centerRight,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         const Text('بيانات العميل',style: Style.style1),
         const SizedBox(height: 10,),
         const Text('اسم العميل',style: Style.style1),
         const SizedBox(height: 5,),
          Text(customer.name,style: Style.style2),
         const SizedBox(height: 10,),
         const Text('عنوان العميل',style: Style.style1),
         const SizedBox(height: 5,),
         Text(customer.address,style: Style.style2),
         const SizedBox(height: 10,),
         const Text('طريقة الدفع',style: Style.style1),
         const SizedBox(height: 5,),
         Text(customer.paymentMethod,style: Style.style2),
         const SizedBox(height: 10,),
         const Text('رقم العميل',style: Style.style1),
         const SizedBox(height: 5,),
         Text(customer.phoneNumber.toString(),style: Style.style2),
         const SizedBox(height: 10,),
       ],
     ),
   );
  }


}