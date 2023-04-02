import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:nafs/screens/Guest_Sign_In/relationshipStatus.dart';
import 'package:nafs/screens/Guest_Sign_In/religiousStatuc.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IdentityStatus extends StatefulWidget {
  const IdentityStatus({super.key});

  @override
  State<IdentityStatus> createState() => _IdentityStatusState();
}

class _IdentityStatusState extends State<IdentityStatus> {
  var selectedGender = 'Straight';
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
                            "How do you identify?",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.bold,
                                fontSize: DataConstants.twentyFour,
                                color: DataConstants.blackColor),
                          ),

                          Text(
                            "Select your identity status",
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
                            selectedGender = 'Straight';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 4.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Straight'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Straight",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color:
                                selectedGender == 'Straight' ? kWhite : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'gay';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'gay'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Gay",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Gay'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Lesbian';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Lesbian'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Lesbian",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Lesbian'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Asexual';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Asexual'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Asexual",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Asexual'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'Questioning';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'Questioning'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "Questioning",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'Questioning'
                                    ? kWhite
                                    : Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = 'I don’t know';
                          });
                        },
                        child: Container(
                          width: 100.w,
                          margin: EdgeInsets.only(bottom: 2.h),
                          alignment: Alignment.center,
                          height: 6.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: selectedGender == 'I don’t know'
                                  ? DataConstants.blueColor
                                  : Color(0xffe4e4e4)),
                          child: Text(
                            "I don’t know",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                height: 0,
                                fontSize: DataConstants.sixteen,
                                color: selectedGender == 'I don’t know'
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
