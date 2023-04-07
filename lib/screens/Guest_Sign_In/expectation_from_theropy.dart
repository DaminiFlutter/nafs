import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/suicide.dart';
import 'package:nafs/screens/Guest_Sign_In/todayTheropy.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'communication_type.dart';

class ExpectationFromTheropy extends StatefulWidget {
  const ExpectationFromTheropy({super.key});

  @override
  State<ExpectationFromTheropy> createState() => _ExpectationFromTheropyState();
}

class _ExpectationFromTheropyState extends State<ExpectationFromTheropy> {
  var selectedGender = 'No, It is a general thought or feelings';

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
                        "What are your expectations from your therapist ?",
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.bold,
                            fontSize: DataConstants.twentyFour,
                            color: DataConstants.blackColor),
                      ),
                      Text(
                        "Select a therapist who",
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
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 20,
                        children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Listens';
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Listens'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Text(
                              "Listens",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color: selectedGender == 'Listens'
                                      ? kWhite
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Explores my past';
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Explores my past'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Text(
                              "Explores my past",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color: selectedGender == 'Explores my past'
                                      ? kWhite
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Teaches me new skills';
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Teaches me new skills'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Text(
                              "Teaches me new skills",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color:
                                      selectedGender == 'Teaches me new skills'
                                          ? kWhite
                                          : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Assigns me homework';
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Assigns me homework'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Text(
                              "Assigns me homework",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color: selectedGender == 'Assigns me homework'
                                      ? kWhite
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Guides me to set goals';
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Guides me to set goals'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                            child: Text(
                              "Guides me to set goals",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color:
                                      selectedGender == 'Guides me to set goals'
                                          ? kWhite
                                          : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
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
              Get.to(CommunicationType());
              // }
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
