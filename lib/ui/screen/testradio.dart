import 'package:flutter/material.dart';
import 'package:tawsel/core/constant/color.dart';
import 'package:tawsel/core/constant/style.dart';
import 'package:tawsel/ui/widget/button.dart';
import 'package:tawsel/ui/widget/customtextformfield.dart';


enum BestTutorSite { address1, address2, address3,address4,address5 }

class MyStatefulWidget extends StatefulWidget {

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  BestTutorSite _site = BestTutorSite.address2;
  double price = 20;
  bool containerColor = false;

Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey,
            child: InkWell(
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  elevation: 0,
                  backgroundColor: const Color(0XFFFFFFFF),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(top:50),
                  behavior: SnackBarBehavior.floating,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
                  content: Container(
                      color: ConstantColor.gray,
                      child: Column(children: [
                        const ListTile(
                          leading: Icon(Icons.clear_sharp,color: Colors.black,),
                          title: Center(child: Text(" اختر العنوان",style: Style.style1,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(children:
                          [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ConstantColor.gray2),
                                color: _site == BestTutorSite.address1?Colors.deepOrange:Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:  ListTile(
                                textColor: _site == BestTutorSite.address1?Colors.white:Colors.black54 ,
                                title: const Text('محيط الهرم - الجيزة'),
                                leading: Radio(
                                  activeColor: Colors.white,
                                  value: BestTutorSite.address1,
                                  groupValue: _site,
                                  onChanged: (BestTutorSite? value) {
                                    setState(() {
                                      _site = value!;
                                      containerColor = true;
                                    });
                                  },
                                ),
                                trailing: Text("20 ج.م"),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ConstantColor.gray2),
                                color: _site == BestTutorSite.address2?Colors.deepOrange:Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                textColor: _site == BestTutorSite.address2?Colors.white:Colors.black54 ,
                                title: const Text('محيط وسط البلد-القاهرة'),
                                leading: Radio(
                                  activeColor: Colors.white,
                                  value: BestTutorSite.address2,
                                  groupValue: _site,
                                  onChanged: (BestTutorSite? value) {
                                    setState(() {
                                      _site = value!;
                                      containerColor=true;
                                    });
                                  },
                                ),
                                trailing: Text("20 ج.م"),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ConstantColor.gray2),
                                color: _site == BestTutorSite.address3?Colors.deepOrange:Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                textColor: _site == BestTutorSite.address3?Colors.white:Colors.black54 ,
                                title: const Text('محيط الدقي-الجيزة'),
                                leading: Radio(
                                  activeColor: Colors.white,
                                  // fillColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                                  //focusColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                                  value: BestTutorSite.address3,
                                  groupValue: _site,
                                  onChanged: (BestTutorSite? value) {
                                    setState(() {
                                      _site = value!;
                                    });
                                  },
                                ),
                                trailing: Text("20 ج.م"),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ConstantColor.gray2),
                                color: _site == BestTutorSite.address4?Colors.deepOrange:Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                textColor: _site == BestTutorSite.address4?Colors.white:Colors.black54 ,
                                title: const Text('محيط كورنيش النيل -الجيزة'),
                                leading: Radio(
                                  activeColor: Colors.white,
                                  // fillColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                                  //focusColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                                  value: BestTutorSite.address4,
                                  groupValue: _site,
                                  onChanged: (BestTutorSite? value) {
                                    setState(() {
                                      _site = value!;
                                    });
                                  },
                                ),
                                trailing: Text("20 ج.م"),
                              ),
                            ),
                          ],),
                        ),
                        ListTile(
                          textColor: Colors.black54 ,
                          title: const Text('مكان آخر'),
                          leading: Radio(
                            activeColor: Colors.deepOrange,
                            value: BestTutorSite.address5,
                            groupValue: _site,
                            onChanged: (BestTutorSite? value) {
                              setState(() {
                                _site = value!;
                                containerColor = true;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child:Column(children: [
                            CustomTextFormField(label: "ادخل العنوان"),
                            const SizedBox(height: 10,),
                            CustomTextFormField(label: "تكلفة التوصبل العنوان"),
                            const SizedBox(height: 10,),
                            Button(label: 'إرسال', color: Colors.orange, onPressed: (){}),
                            const SizedBox(height: 10,),
                          ],),
                        )

                      ],)
                  ),
                ),);
              },
              child: Icon(Icons.slideshow),
            ),
          ),
        ),
      ),
    );
  }
}


