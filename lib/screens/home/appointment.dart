import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/home/book_a_session.dart';
import 'package:nafs/widgets/appointment_widgets.dart';
import 'package:nafs/widgets/button.dart';
import 'package:nafs/widgets/common_header.dart';
import 'package:nafs/widgets/common_label.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appointment extends StatefulWidget {
  // final String path;
  // final String name;
  // final String desc;

  const Appointment({
    Key? key,
  }) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonHeader(text: "Appointment", showIcon: true),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: DataConstants.greyColor),
                        child: Image(
                          image: AssetImage("assets/home/ladydr.png"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonLabel(
                          text: "Dr. Ali",
                          size: 16,
                          color: DataConstants.blackColor,
                          weight: FontWeight.w600),
                      SizedBox(
                        height: 1.h,
                      ),
                      CommonLabel(
                          text: "Trauma Therapist",
                          size: 10,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w500),
                      CommonLabel(
                          text:
                              "Lorem ipsum dolor sit amet consectetur.\n Cras cras pellentesque vitae et sollicitudin.",
                          size: 10,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w500),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "assets/home/phone_appointement.svg",
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          SvgPicture.asset(
                            "assets/home/video.svg",
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonLabel(
                          text: "Patients",
                          size: 12,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w500),
                      CommonLabel(
                          text: "1.4k",
                          size: 16,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w600)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonLabel(
                          text: "Experience",
                          size: 12,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w500),
                      CommonLabel(
                          text: "5 Years",
                          size: 16,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w600)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonLabel(
                          text: "Reviews",
                          size: 12,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w500),
                      CommonLabel(
                          text: "3.00 K",
                          size: 16,
                          color: DataConstants.lightBlackColor,
                          weight: FontWeight.w600)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CommonLabel(
                  text: "Language",
                  size: 18,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w600),
              SizedBox(
                height: 0.5.h,
              ),
              CommonLabel(
                  text: "Arabic and English",
                  size: 12,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w500),
              SizedBox(
                height: 1.h,
              ),
              CommonLabel(
                  text: "About",
                  size: 18,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w600),
              SizedBox(
                height: 0.5.h,
              ),
              CommonLabel(
                  text:
                      "Lorem ipsum dolor sit amet consectetur. Sagittis sed leo viverra pellentesque ut est enim metus tortor. Ipsum scelerisque sit parturient amet nunc porta. Sagittis eget eget odio a commodo etiam purus facilisi ut. Turpis enim ultrices massa sed sit scelerisque nibh.",
                  size: 12,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w500),
              SizedBox(
                height: 2.h,
              ),
              CommonLabel(
                  text: "Specialities",
                  size: 18,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w600),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    CommonContainer(
                      textColor: DataConstants.lightBlackColor,
                      radius: 19,
                      bgColor: DataConstants.bgGreyColor,
                      borderColor:
                          DataConstants.lightBlackColor.withOpacity(0.1),
                      text: "Stress",
                    ),
                    CommonContainer(
                        textColor: DataConstants.lightBlackColor,
                        radius: 19,
                        bgColor: DataConstants.bgGreyColor,
                        borderColor:
                            DataConstants.lightBlackColor.withOpacity(0.1),
                        text: "Anxiety"),
                    CommonContainer(
                        textColor: DataConstants.lightBlackColor,
                        radius: 19,
                        bgColor: DataConstants.bgGreyColor,
                        borderColor:
                            DataConstants.lightBlackColor.withOpacity(0.1),
                        text: "Relationship issue"),
                    CommonContainer(
                        textColor: DataConstants.lightBlackColor,
                        radius: 19,
                        bgColor: DataConstants.bgGreyColor,
                        borderColor:
                            DataConstants.lightBlackColor.withOpacity(0.1),
                        text: "Trauma and abuse"),
                    CommonContainer(
                        textColor: DataConstants.lightBlackColor,
                        radius: 19,
                        bgColor: DataConstants.bgGreyColor,
                        borderColor:
                            DataConstants.lightBlackColor.withOpacity(0.1),
                        text: "Depression"),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Get.to(BookSession());
                  },
                  child: CommonButton(text: "Book an appointment"))
            ],
          ),
        ),
      ),
    );
  }
}
