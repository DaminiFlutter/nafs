import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafs/screens/home/home_screen.dart';
import 'package:nafs/widgets/button.dart';
import 'package:nafs/widgets/common_label.dart';
import 'package:sizer/sizer.dart';
import '../../constants/dataconstants.dart';
import 'package:get/get.dart';
class RecommnededTherapist extends StatefulWidget {
  const RecommnededTherapist({Key? key}) : super(key: key);

  @override
  State<RecommnededTherapist> createState() => _RecommnededTherapistState();
}

class _RecommnededTherapistState extends State<RecommnededTherapist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/login/arrow-left.svg"),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Recommended Therapist",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: DataConstants.commonTextStyle(
                      weight: FontWeight.w600,
                      fontSize: 28,
                      color: DataConstants.blueColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Here is our recommendation for you if you want, you can change your therapist later.",
                softWrap: true,
                textAlign: TextAlign.center,
                style: DataConstants.commonTextStyle(
                    weight: FontWeight.w500,
                    fontSize: 16,
                    color: DataConstants.lightBlackColor),
              ),
              SizedBox(
                height: 10.h,
              ),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F5),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        CommonLabel(
                            text: "Dr. Ali",
                            size: 18,
                            color: DataConstants.blackColor,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: 1.h,
                        ),
                        CommonLabel(
                            text: "Clinical Psychologist",
                            size: 14,
                            color: DataConstants.blackColor,
                            weight: FontWeight.w500),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/recommended/briefcase.svg"),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "12 Years of experience",
                                        size: 14,
                                        color: DataConstants.blackColor,
                                        weight: FontWeight.w500),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/recommended/map (1).svg"),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "English, Arabic",
                                        size: 14,
                                        color: DataConstants.blackColor,
                                        weight: FontWeight.w500),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/recommended/clipboard.svg"),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text:
                                        "Stress, Anxiety, Relationship Issues, Trauma\n and abuse, Depression",
                                        size: 14,
                                        color: DataConstants.blackColor,
                                        weight: FontWeight.w500),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text("Review Profile",
                                style: DataConstants.commonTextStyle(
                                    weight: FontWeight.w600,
                                    fontSize: 16,
                                    color: DataConstants.blueColor)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30.w,
                    bottom: 22  .h,
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                          color: DataConstants.activeColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/profile/image.png"))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(HomeScreen());
                },
                  child: CommonButton(text: "Confirm")),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 6.h,
                decoration: BoxDecoration(
                    color:Color(0xffF0F1F5),
                    borderRadius: BorderRadius.all(Radius.circular(27))),
                child: Center(
                  child: Text("Suggest another",style: DataConstants.commonTextStyle(weight: FontWeight.w600, fontSize: 20, color: DataConstants.blackColor),),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(child: CommonLabel(text: "Retest", size: 20, color: DataConstants.blueColor, weight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}
