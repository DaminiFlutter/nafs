import 'package:flutter/material.dart';
import 'package:nafs/screens/onboarding/splash.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        title: 'NAFS',
        theme: ThemeData(
          fontFamily: "Quicksand",
          primarySwatch: Colors.blue,
        ),
      );
    });
  }
}
