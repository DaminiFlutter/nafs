import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/dataconstants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LookingForScreen extends StatefulWidget {
  const LookingForScreen({Key? key}) : super(key: key);

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}

class _LookingForScreenState extends State<LookingForScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 5.h, left: 5.h, ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "We are looking",
              softWrap: true,
              textAlign: TextAlign.center,
              style: DataConstants.commonTextStyle(
                  weight: FontWeight.bold,
                  fontSize: DataConstants.twentyFour,
                  color: DataConstants.blackColor),
            ),

            Text(
              "I am looking for the most suitable therapist to help you during the therapy process",
              softWrap: true,
              textAlign: TextAlign.center,
              style: DataConstants.commonTextStyle(
                  weight: FontWeight.w500,
                  height: 2,
                  fontSize: DataConstants.eighteen,
                  color: DataConstants.lightBlackColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            SvgPicture.asset("assets/onboarding/lookingfor.svg")
          ],
        ),
      ),
    ));
  }
}