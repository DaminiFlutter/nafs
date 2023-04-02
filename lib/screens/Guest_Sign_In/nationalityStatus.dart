import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'identistatus.dart';

class NationalityStatus extends StatefulWidget {
  const NationalityStatus({super.key});

  @override
  State<NationalityStatus> createState() => _NationalityStatusState();
}

class _NationalityStatusState extends State<NationalityStatus> {
  var selectedType = 'Islam';
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
                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                      Text(
                        "Which religion do you identify\n with?",
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.bold,
                            fontSize: DataConstants.twentyFour,
                            color: DataConstants.blackColor),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Select your religion",
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w400,

                            fontSize: DataConstants.eighteen,
                            color: DataConstants.lightBlackColor),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'Islam';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 4.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedType == 'Islam'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Islam",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedType == 'Islam'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'Christianity';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedType == 'Christianity'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Christianity",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedType == 'Christianity'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'Hinduism';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedType == 'Hinduism'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Hinduism",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedType == 'Hinduism'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'Druz';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedType == 'Druz'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Druz",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedType == 'Druz'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'Other';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedType == 'Other'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Other",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedType == 'Other'
                                    ? kWhite
                                    : Colors.black),
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
                              Text("Therapists on the Therapy platform\nhave diverse backgrounds. You’ll be\nable to request a muslim therapist if\nneeded."),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Skip",
            style: DataConstants.commonTextStyle(
                weight: FontWeight.w600,
                fontSize: DataConstants.twenty,
                color: DataConstants.skipColor),
          ),
          GestureDetector(
            onTap: () {
              Get.to(IdentityStatus());
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
