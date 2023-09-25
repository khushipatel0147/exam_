import 'package:exam/view/data_screen.dart';
import 'package:exam/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main()
{
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) => HomeScreen(),
      '/data':(p0) => DataScreen()
    },
  ));
}