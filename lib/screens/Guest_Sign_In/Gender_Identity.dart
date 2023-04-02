import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class GenderIdentity extends StatefulWidget {
  const GenderIdentity({super.key});

  @override
  State<GenderIdentity> createState() => _GenderIdentityState();
}

class _GenderIdentityState extends State<GenderIdentity> {
  var selectedGender = 'Men';
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

                      Text(
                        "What is your gender identity",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.bold,
                            fontSize: DataConstants.twentyFour,
                            color: DataConstants.blackColor),
                      ),

                      Text(
                        "Select Your Gender",
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
                        selectedGender = 'Men';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.only(bottom: 4.h),
                      alignment: Alignment.center,
                      height: 6.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedGender == 'Men'
                              ? DataConstants.blueColor
                              : Color(0xffe4e4e4)),
                      child: Text(
                        "Men",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w500,
                            height: 0,
                            fontSize: DataConstants.sixteen,
                            color:
                                selectedGender == 'Men' ? kWhite : Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Women';
                      });
                    },
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.only(bottom: 2.h),
                      alignment: Alignment.center,
                      height: 6.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: selectedGender == 'Women'
                              ? DataConstants.blueColor
                              : Color(0xffe4e4e4)),
                      child: Text(
                        "Women",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w500,
                            height: 0,
                            fontSize: DataConstants.sixteen,
                            color: selectedGender == 'Women'
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
              Get.to(TypeOfTheropy());
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
