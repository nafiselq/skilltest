import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'widget/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
    // FutureBuilder(
    //     future: Future.delayed(Duration(seconds: 5)),
    //     builder: (context, i) {
    //       if (i.connectionState == ConnectionState.waiting) {
    //         return SplashScreen();
    //       } else {
    //         return GetMaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: "Application",
    //           initialRoute: AppPages.INITIAL,
    //           getPages: AppPages.routes,
    //         );
    //       }
    //     });
  }
}
