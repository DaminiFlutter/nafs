import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:nafs/screens/Guest_Sign_In/pasttheory.dart';
import 'package:nafs/screens/Guest_Sign_In/relationshipStatus.dart';
import 'package:nafs/screens/Guest_Sign_In/suicide.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'nationalityStatus.dart';

class SleepingHabits extends StatefulWidget {
  const SleepingHabits({super.key});

  @override
  State<SleepingHabits> createState() => _ReligiousStatusState();
}

class _ReligiousStatusState extends State<SleepingHabits> {
  var selectedGender = 'Fair';

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
                            "How would you rate your current sleeping habits ?",
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.bold,
                                fontSize: DataConstants.twentyFour,
                                color: DataConstants.blackColor),
                          ),
                          Text(
                            "Answer your experiencing problems",
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
                            selectedGender = 'Good';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Good'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Good",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Good'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Fair';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Fair'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Fair",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Fair'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Poor';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Poor'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Poor",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color:
                                selectedGender == 'Poor' ? kWhite : Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: DataConstants.blueColor.withOpacity(0.35),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset("assets/login/info.svg"),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text("Many adults who have generalized\nanxiety disorder also suffer from sleep\nproblems."),
                            ],
                          ),
                        ),
                      )
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
              // if (selectedGender == "No") {
              //   print(selectedGender);
              //   Get.to(PastTheory());
              // } else {
                Get.to(Suicide());
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
