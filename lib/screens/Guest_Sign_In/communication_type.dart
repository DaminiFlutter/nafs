import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:nafs/screens/Guest_Sign_In/preferenceTherapist.dart';
import 'package:nafs/screens/Guest_Sign_In/relationshipStatus.dart';
import 'package:nafs/screens/Guest_Sign_In/sleepinghabits.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'nationalityStatus.dart';

class CommunicationType extends StatefulWidget {
  const CommunicationType({super.key});

  @override
  State<CommunicationType> createState() => _ReligiousStatusState();
}

class _ReligiousStatusState extends State<CommunicationType> {
  var selectedGender = 'Via phone or video call';

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
                            "How do you prefer to communicate with your therapist ?",
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.bold,
                                fontSize: DataConstants.twentyFour,
                                color: DataConstants.blackColor),
                          ),
                          Text(
                            "Select the way of communication",
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
                            selectedGender = 'In person';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'In person'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "In person",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color:
                                selectedGender == 'In person' ? kWhite : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Via phone or video call';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Via phone or video call'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Via phone or video call",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Via phone or video call'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Not sure yet (decide later)';
                          });
                        },
                        child: Container(

                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Not sure yet (decide later)'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Not sure yet (decide later)",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: DataConstants.commonTextStyle(
                                  weight: FontWeight.w500,
                                  height: 0,
                                  fontSize: DataConstants.sixteen,
                                  color: selectedGender == 'Not sure yet (decide later)'
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

              Get.to(PreferenceTherapist());

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
