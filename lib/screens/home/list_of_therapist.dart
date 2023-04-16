import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/dataconstants.dart';
import '../../widgets/common_header.dart';
import '../../widgets/common_label.dart';
import '../../widgets/home_screen_widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListOfTherapist extends StatefulWidget {
  const ListOfTherapist({Key? key}) : super(key: key);

  @override
  State<ListOfTherapist> createState() => _ListOfTherapistState();
}

class _ListOfTherapistState extends State<ListOfTherapist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CommonHeader(text: "List Of Therapist", showIcon: true),
              SizedBox(
                height: 3.h,
              ),
              SearchWidget(),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(ListOfTherapist());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: DataConstants.bgGreyColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "assets/home/ladydr.png"))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            CommonLabel(
                                                text: "Dr. Ali",
                                                size: 14,
                                                color: DataConstants.blackColor,
                                                weight: FontWeight.w600),
                                            SizedBox(
                                              width: 35.w,
                                            ),
                                            SvgPicture.asset(
                                                "assets/home/fav.svg")
                                          ],
                                        ),

                                        CommonLabel(
                                            text: "Trauma Therapist",
                                            size: 8,
                                            color:
                                                DataConstants.lightBlackColor,
                                            weight: FontWeight.w500),

                                        CommonLabel(
                                            text:
                                                "Lorem ipsum dolor sit amet consectetur. Cras cras pellentesque\n vitae et sollicitudin.",
                                            size: 7,
                                            color:
                                                DataConstants.lightBlackColor,
                                            weight: FontWeight.w500),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 15.w,
                                              height: 3.h,
                                              decoration: BoxDecoration(
                                                  color:
                                                      DataConstants.blueColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Center(
                                                child: Text(
                                                  "Book",
                                                  style: DataConstants
                                                      .commonTextStyle(
                                                          weight:
                                                              FontWeight.w600,
                                                          fontSize: 11,
                                                          color: DataConstants
                                                              .whiteColor),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/home/star.svg"),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                CommonLabel(
                                                    text: "(5.0)",
                                                    size: 12,
                                                    color: DataConstants
                                                        .lightBlackColor,
                                                    weight: FontWeight.w500),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                CommonLabel(
                                                    text: "((321) Review",
                                                    size: 8,
                                                    color: DataConstants
                                                        .lightBlackColor,
                                                    weight: FontWeight.w500),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.w,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
