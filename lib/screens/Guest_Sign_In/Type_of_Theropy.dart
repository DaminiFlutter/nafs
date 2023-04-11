import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Gender_Identity.dart';
import 'identistatus.dart';

class TypeOfTheropy extends StatefulWidget {
  const TypeOfTheropy({super.key});

  @override
  State<TypeOfTheropy> createState() => _TypeOfTheropyState();
}

class _TypeOfTheropyState extends State<TypeOfTheropy> {
  var selectedType = 'Individual';

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: Text(
                          "What type of theropy are you looking for?",
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.bold,
                              fontSize: DataConstants.twentyFour,
                              color: DataConstants.blackColor),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "Select for you who you looking good",
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
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = 'Individual';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.only(bottom: 2.h),
                      alignment: Alignment.center,
                      height: 6.h,

                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffE0E0E0)
                          ),
                          borderRadius: BorderRadius.circular(24),
                          color: selectedType == 'Individual'
                              ? DataConstants.blueColor
                              : Color(0xffF0F1F5)),
                      child: Text(
                        "Individual (For Myself)",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w500,
                            height: 0,
                            fontSize: DataConstants.sixteen,
                            color: selectedType == 'Individual'
                                ? kWhite
                                : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = 'Couples';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.only(bottom: 5.h),
                      alignment: Alignment.center,
                      height: 6.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedType == 'Couples'
                              ? DataConstants.blueColor
                              : Color(0xffF0F1F5)),
                      child: Text(
                        "Couples (For me and my partner)",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w500,
                            height: 0,
                            fontSize: DataConstants.sixteen,
                            color: selectedType == 'Couples'
                                ? kWhite
                                : Colors.black),
                      ),
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: DataConstants.blueColor.withOpacity(0.35),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/login/info.svg"),

                          Text(
                            "Let’s walk through the process of\nfinding the best therapist for you! We’ll\nstart off with some basic questions",
                            softWrap: true,


                          ),
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
              Get.to(GenderIdentity());
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
