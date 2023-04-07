import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/suicide_plan.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'expectation_from_theropy.dart';
import 'nationalityStatus.dart';

class TodayTheropy extends StatefulWidget {
  const TodayTheropy({super.key});

  @override
  State<TodayTheropy> createState() => _SuicideState();
}

class _SuicideState extends State<TodayTheropy> {
  List<Map<String, dynamic>> todayTheropyList = [
    {"title": "I’ve been feeling depressed", "selected": true},
    {
      "title": "I’ve been having panic attacks/anxiety/phobias",
      "selected": false
    },
    {
      "title": "I’ve been feeling anxious/overwhelmed",
      "selected": false
    },
    {
      "title": "I’ve been having panic attacks/anxiety/phobias",
      "selected": false
    },
    {
      "title": "My Mood is interfering with my work performance",
      "selected": false
    },
    {
      "title": "I struggle with building or maintaining relationships",
      "selected": false
    },
    {
      "title": "I have sexuality issues",
      "selected": false
    },
    {
      "title": "I am grieving/i have lost someone close",
      "selected": false
    },
    {
      "title": "I have experienced trauma",
      "selected": false
    },
    {
      "title": "I have experienced abuse (sexual,physical,emotional)",
      "selected": false
    },
    {
      "title": "I am undergoing a big change/need to talk through a specific challenge",
      "selected": false
    },
    {
      "title": "I have an eating disorder",
      "selected": true
    },
    {
      "title": "I have an addiction/substance abuse",
      "selected": false
    },
    {
      "title": "I have anger issues",
      "selected": false
    },
    {
      "title": "I have chronic pain/tiredness/lethargy",
      "selected": false
    },
    {
      "title": "I have medical issue/illness",
      "selected": false
    }
  ];

  // var selectedIndex =

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
                      "What led you to consider therapy today ?",
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.bold,
                          fontSize: DataConstants.twentyFour,
                          color: DataConstants.blackColor),
                    ),
                    Text(
                      "Select struggles that you need help with",
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
                Column(
                  children: [
                    ListView.builder(
                      itemCount: todayTheropyList.length,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int i) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              todayTheropyList[i]["selected"] =
                                  !todayTheropyList[i]["selected"];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: todayTheropyList[i]["selected"] == true
                                    ? DataConstants.blueColor
                                    : DataConstants.greyColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(19))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "${todayTheropyList[i]['title']}",
                                style: DataConstants.commonTextStyle(
                                    weight: FontWeight.w500,
                                    height: 0,
                                    fontSize: DataConstants.sixteen,
                                    color: todayTheropyList[i]["selected"] ==
                                            true
                                        ? DataConstants.whiteColor
                                        : DataConstants.blackColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
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
              Get.to(ExpectationFromTheropy());
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
