import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/features/splash/splash_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [GetPage(name: '/splash', page: () => SplashView())],
    ),
  );
}
