import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/home/list_of_therapist.dart';
import 'package:nafs/widgets/common_label.dart';
import '../../widgets/home_screen_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeBottomScreen extends StatefulWidget {
  const HomeBottomScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomScreen> createState() => _HomeBottomScreenState();
}

class _HomeBottomScreenState extends State<HomeBottomScreen> {
  List<Widget> slider = [
    Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: DataConstants.blueColor,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonLabel(
                        text: "Dr. Rubaisha",
                        size: 18,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 1.h,
                    ),
                    CommonLabel(
                        text: "Depression Therapist",
                        size: 12,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    CommonLabel(
                        text: "17 july 2022 at 1:00am",
                        size: 12,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/home/star.svg"),
                        CommonLabel(
                            text: "(4.5)",
                            size: 12,
                            color: DataConstants.whiteColor,
                            weight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/home/phone.svg"),
                        CommonLabel(
                            text: "Contact",
                            size: 12,
                            color: DataConstants.whiteColor,
                            weight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50.w),
          height: 15.h,
          width: 20.h,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/home/ladydr.png"))),
        )
      ],
    ),
    Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: DataConstants.blueColor,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonLabel(
                        text: "Dr. Rubaisha",
                        size: 18,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 1.h,
                    ),
                    CommonLabel(
                        text: "Depression Therapist",
                        size: 12,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    CommonLabel(
                        text: "17 july 2022 at 1:00am",
                        size: 12,
                        color: DataConstants.whiteColor,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/home/star.svg"),
                        CommonLabel(
                            text: "(4.5)",
                            size: 12,
                            color: DataConstants.whiteColor,
                            weight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/home/phone.svg"),
                        CommonLabel(
                            text: "Contact",
                            size: 12,
                            color: DataConstants.whiteColor,
                            weight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50.w),
          height: 15.h,
          width: 20.h,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/home/.png"))),
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              HeaderOfHomeScreen(),
              SearchWidget(),
              SizedBox(
                height: 3.h,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 17.h,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: slider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: DataConstants.blueColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 20),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonLabel(
                                          text: "Dr. Rubaisha",
                                          size: 18,
                                          color: DataConstants.whiteColor,
                                          weight: FontWeight.w500),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      CommonLabel(
                                          text: "Depression Therapist",
                                          size: 12,
                                          color: DataConstants.whiteColor,
                                          weight: FontWeight.w500),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      CommonLabel(
                                          text: "17 july 2022 at 1:00am",
                                          size: 12,
                                          color: DataConstants.whiteColor,
                                          weight: FontWeight.w500),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/home/star.svg"),
                                          SizedBox(
                                            width: 1.h,
                                          ),
                                          CommonLabel(
                                              text: "(4.5)",
                                              size: 12,
                                              color: DataConstants.whiteColor,
                                              weight: FontWeight.w500),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/home/phone.svg"),
                                          SizedBox(
                                            width: 1.h,
                                          ),
                                          CommonLabel(
                                              text: "Contact",
                                              size: 12,
                                              color: DataConstants.whiteColor,
                                              weight: FontWeight.w500),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50.w),
                            height: 15.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/ladydr.png"))),
                          )
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonLabel(
                      text: "Categories",
                      size: 18,
                      color: DataConstants.blackColor,
                      weight: FontWeight.w600),
                  CommonLabel(
                      text: "See All",
                      size: 12,
                      color: DataConstants.blueColor,
                      weight: FontWeight.w500),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Categories(text: "Depression", imageName: "depression 1.png"),
                  Categories(text: "Anxiety", imageName: "anxiety 1.png"),
                  Categories(text: "Grief", imageName: "woman 1.png"),
                  Categories(text: "Trauma", imageName: "trauma 1.png"),
                  Categories(text: "Stress", imageName: "fear 1.png"),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonLabel(
                      text: "List of therapist",
                      size: 18,
                      color: DataConstants.blackColor,
                      weight: FontWeight.w600),
                  CommonLabel(
                      text: "See All",
                      size: 12,
                      color: DataConstants.blueColor,
                      weight: FontWeight.w500),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 2,
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
                                padding: EdgeInsets.symmetric(horizontal: 10),
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
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        CommonLabel(
                                            text: "Trauma Therapist",
                                            size: 8,
                                            color:
                                                DataConstants.lightBlackColor,
                                            weight: FontWeight.w500),
                                        SizedBox(
                                          height: 1.h,
                                        ),
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
