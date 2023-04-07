import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:nafs/screens/Guest_Sign_In/relationshipStatus.dart';
import 'package:nafs/screens/Guest_Sign_In/sleepinghabits.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'nationalityStatus.dart';

class PreferenceTherapist extends StatefulWidget {
  const PreferenceTherapist({super.key});

  @override
  State<PreferenceTherapist> createState() => _ReligiousStatusState();
}

class _ReligiousStatusState extends State<PreferenceTherapist> {
  var selectedGender = 'Male or Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
            left: 3.h,
            right: 3.h,
            top: 5.h,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/login/arrow-left.svg")),
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Are there any specific preferences for your  therapist ?",
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.bold,
                            fontSize: DataConstants.twentyFour,
                            color: DataConstants.blackColor),
                      ),
                      Text(
                        "Choose your preference",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w500,
                            height: 2,
                            fontSize: DataConstants.eighteen,
                            color: DataConstants.lightBlackColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Male or Female';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedGender == 'Male or Female'
                              ? DataConstants.blueColor
                              : Color(0xffe4e4e4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                        child: Text(
                          "Male or Female",
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w500,
                              fontSize: DataConstants.sixteen,
                              color: selectedGender == 'Male or Female'
                                  ? kWhite
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender =
                            'Religion based  or Non-Religion Based';
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 2.h),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedGender ==
                                  'Religion based  or Non-Religion Based'
                              ? DataConstants.blueColor
                              : Color(0xffe4e4e4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                        child: Text(
                          "Religion based  or Non-Religion Based",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w500,
                              fontSize: DataConstants.sixteen,
                              color: selectedGender ==
                                      'Religion based  or Non-Religion Based'
                                  ? kWhite
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Older therapist or Doesn’t matter';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedGender ==
                                  'Older therapist or Doesn’t matter'
                              ? DataConstants.blueColor
                              : Color(0xffe4e4e4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                        child: Text(
                          "Older therapist or Doesn’t matter",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w500,
                              fontSize: DataConstants.sixteen,
                              color: selectedGender ==
                                      'Older therapist or Doesn’t matter'
                                  ? kWhite
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
        bottomSheet: BottomBar());
  }

  BottomBar() {
    return Container(
      alignment: Alignment.center,
      color: Color(0xffffffff),
      height: 7.5.h,
      width: 100.h,
      padding: EdgeInsets.only(left: 2.h, right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Text(
          //   "Skip",
          //   style: DataConstants.commonTextStyle(
          //       weight: FontWeight.w600,
          //       fontSize: DataConstants.twenty,
          //       color: DataConstants.skipColor),
          // ),
          GestureDetector(
            onTap: () {
              // Get.to(SleepingHabits());
            },
            child: Container(
              decoration: BoxDecoration(
                  color: DataConstants.blueColor,
                  borderRadius: const BorderRadius.all(Radius.circular(27.5))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Next",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: DataConstants.commonTextStyle(
                      weight: FontWeight.w600,
                      height: 0,
                      fontSize: DataConstants.twenty,
                      color: DataConstants.whiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
