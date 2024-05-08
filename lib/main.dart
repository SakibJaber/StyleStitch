import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:style_stitch/features/landing_page/landing_page.dart';
import 'package:style_stitch/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StyleStitch',
        theme: ThemeData(
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 14.5,
              letterSpacing: 0.15,
              color: AppColor.headingColor6,
            ),
            bodyLarge: TextStyle(color: AppColor.headingColor6, fontSize: 14),
            bodySmall: TextStyle(fontSize: 11.0, color: AppColor.captionColor),
          ),
          useMaterial3: true,
        ),
        home: const LandingPage());
  }
}
