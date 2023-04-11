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

class PastTheory extends StatefulWidget {
  const PastTheory({super.key});

  @override
  State<PastTheory> createState() => _ReligiousStatusState();
}

class _ReligiousStatusState extends State<PastTheory> {
  var selectedGender = 'Yes';

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
                            "Have you even been in therapy before ? ",
                            softWrap: true,
                            textAlign: TextAlign.start,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.bold,
                                fontSize: DataConstants.twentyFour,
                                color: DataConstants.blackColor),
                          ),
                          Text(
                            "Tell us about your past therapy",
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
                            selectedGender = 'No';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'No'
                                  ? DataConstants.blueColor
                                  : Color(0xffF0F1F5)),
                          child: Text(
                            "No",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color:
                                selectedGender == 'No' ? kWhite : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Yes';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Yes'
                                  ? DataConstants.blueColor
                                  : Color(0xffF0F1F5)),
                          child: Text(
                            "Yes",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Yes'
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

                Get.to(SleepingHabits());

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
