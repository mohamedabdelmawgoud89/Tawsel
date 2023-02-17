import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawsel/core/constant/color.dart';
import 'package:tawsel/core/constant/imgeassets.dart';
import 'package:tawsel/core/constant/style.dart';

class CustomAppBar {
  static PreferredSizeWidget showAppBar({required String title,double height = 56.0}) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      backgroundColor: ConstantColor.gray,
      title: Text(
        title,
        style: Style.style1,
      ),
      actions: [
        Image.asset(ImageAssets.newOrder),
      ],
    );
  }

}