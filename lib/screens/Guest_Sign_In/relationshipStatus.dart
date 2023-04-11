import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:nafs/screens/Guest_Sign_In/religiousStatuc.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'nationalityStatus.dart';
class RelationshipStatus extends StatefulWidget {
  const RelationshipStatus({super.key});

  @override
  State<RelationshipStatus> createState() => _RelationshipStatusState();
}

class _RelationshipStatusState extends State<RelationshipStatus> {
  var selectedGender = 'Married';
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
                        height: 5.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "What is your relationship status?",
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.bold,
                                fontSize: DataConstants.twentyFour,
                                color: DataConstants.blackColor),
                          ),

                          Text(
                            "Select your current status",
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
                        height: 2.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Single';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Single'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Single",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color:
                                selectedGender == 'Single' ? kWhite : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'In a relationship';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'In a relationship'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "In a relationship",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'In a relationship'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Married';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Married'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Married",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Married'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Divorced';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Divorced'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Divorced",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Divorced'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Widowed';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Widowed'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Widowed",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Widowed'
                                    ? kWhite
                                    : Colors.black),
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
              Get.to(ReligiousStatus());
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
