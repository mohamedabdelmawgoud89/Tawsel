import 'package:get/get.dart';
import 'package:tawsel/ui/screen/homepage.dart';

import '../ui/screen/order_Details.dart';


class PagesNames {
  static String homePage = "/homePage";
  static String orderdetails = "/order_Details";
  static String orders = "/orders";
  static String profile = "/profile";
  static List<GetPage> listOfPages = [
    GetPage(
      name: homePage,
      page: ((() => homepage())),
    ),
    GetPage(
      name: orderdetails,
      page: (() => order_Details()),
    ),
  ];
}
