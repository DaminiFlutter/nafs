import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafs/screens/onboarding/choose_language.dart';

import '../../constants/dataconstants.dart';
import 'onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ChooseLanguage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image(
              height: height,
              fit: BoxFit.fitHeight,
              image: const AssetImage("assets/onboarding/splash.png")),
          Positioned(
            left: 100,
            top: 350,
            child: Column(
              children: [
                SvgPicture.asset("assets/onboarding/logo.svg"),
                Text("Boost your mental health",
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w600,
                        height: 0,
                        fontSize: DataConstants.twenty,
                        color: const Color.fromRGBO(62, 81, 87, 0.75)))
              ],
            ),
          )
        ],
      )),
    );
  }
}
