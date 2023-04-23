import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/widgets/common_header.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/common_label.dart';
import '../../widgets/home_screen_widgets.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<ItemModel> _chipsList = [
    ItemModel("All", DataConstants.bgGreyColor, true),
    ItemModel("Top Rated", DataConstants.bgGreyColor, false),
    ItemModel("Experienced", DataConstants.bgGreyColor, false),
    ItemModel("Most liked", DataConstants.bgGreyColor, false),
    ItemModel("Most liked", DataConstants.bgGreyColor, false),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CommonHeader(text: "Categories", showIcon: false),
                SizedBox(
                  height: 2.h,
                ),
                SearchWidget(),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: _chipsList.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _chipsList[index].isSelected =
                                        !_chipsList[index].isSelected;
                                  });
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: _chipsList[index].isSelected
                                            ? DataConstants.blueColor
                                            : DataConstants.bgGreyColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.w,
                                      ),
                                      child: Center(
                                        child: Text(
                                          _chipsList[index].label,
                                          style: DataConstants.commonTextStyle(
                                              weight: FontWeight.w600,
                                              fontSize: 16,
                                              color: _chipsList[index].isSelected
                                                  ? DataConstants.whiteColor
                                                  : DataConstants
                                                      .lightBlackColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
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
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: DataConstants.bgGreyColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image(image: AssetImage("assets/home/ladydr.png"))
                          ],
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonLabel(
                                    text: "Dr. Ali",
                                    size: 14,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w600),
                                SizedBox(
                                  width: 35.w,
                                ),
                                SvgPicture.asset("assets/home/fav.svg")
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            CommonLabel(
                                text: "Trauma Therapist",
                                size: 8,
                                color: DataConstants.lightBlackColor,
                                weight: FontWeight.w500),
                            SizedBox(
                              height: 1.h,
                            ),
                            CommonLabel(
                                text:
                                    "Lorem ipsum dolor sit amet consectetur. Cras cras pellentesque\n vitae et sollicitudin.",
                                size: 7,
                                color: DataConstants.lightBlackColor,
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
                                      color: DataConstants.blueColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Book",
                                      style: DataConstants.commonTextStyle(
                                          weight: FontWeight.w600,
                                          fontSize: 11,
                                          color: DataConstants.whiteColor),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/home/star.svg"),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "(5.0)",
                                        size: 12,
                                        color: DataConstants.lightBlackColor,
                                        weight: FontWeight.w500),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "((321) Review",
                                        size: 8,
                                        color: DataConstants.lightBlackColor,
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
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: DataConstants.bgGreyColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image(image: AssetImage("assets/home/ladydr.png"))
                          ],
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonLabel(
                                    text: "Dr. Ali",
                                    size: 14,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w600),
                                SizedBox(
                                  width: 35.w,
                                ),
                                SvgPicture.asset("assets/home/fav.svg")
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            CommonLabel(
                                text: "Trauma Therapist",
                                size: 8,
                                color: DataConstants.lightBlackColor,
                                weight: FontWeight.w500),
                            SizedBox(
                              height: 1.h,
                            ),
                            CommonLabel(
                                text:
                                    "Lorem ipsum dolor sit amet consectetur. Cras cras pellentesque\n vitae et sollicitudin.",
                                size: 7,
                                color: DataConstants.lightBlackColor,
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
                                      color: DataConstants.blueColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Book",
                                      style: DataConstants.commonTextStyle(
                                          weight: FontWeight.w600,
                                          fontSize: 11,
                                          color: DataConstants.whiteColor),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/home/star.svg"),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "(5.0)",
                                        size: 12,
                                        color: DataConstants.lightBlackColor,
                                        weight: FontWeight.w500),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    CommonLabel(
                                        text: "((321) Review",
                                        size: 8,
                                        color: DataConstants.lightBlackColor,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonLabel(
                        text: "Top rated therapist",
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
                  height: 2.h,
                ),
                SizedBox(
                  height: 30.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 36.w,
                          decoration: BoxDecoration(
                              color: DataConstants.bgGreyColor,
                              borderRadius: BorderRadius.all(Radius.circular(11))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/home/ladydr.png")),
                                CommonLabel(
                                    text: "Dr. Needa",
                                    size: 10,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w600),
                                CommonLabel(
                                    text: "Stress Therapist",
                                    size: 8,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w500),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 15.w,
                                      height: 3.h,
                                      decoration: BoxDecoration(
                                          color: DataConstants.blueColor,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "Book",
                                          style: DataConstants.commonTextStyle(
                                              weight: FontWeight.w600,
                                              fontSize: 11,
                                              color: DataConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 10.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            color: DataConstants.blueColor,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SvgPicture.asset(
                                            "assets/home/message.svg",
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 36.w,
                          decoration: BoxDecoration(
                              color: DataConstants.bgGreyColor,
                              borderRadius: BorderRadius.all(Radius.circular(11))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/home/ladydr.png")),
                                CommonLabel(
                                    text: "Dr. Needa",
                                    size: 10,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w600),
                                CommonLabel(
                                    text: "Stress Therapist",
                                    size: 8,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w500),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 15.w,
                                      height: 3.h,
                                      decoration: BoxDecoration(
                                          color: DataConstants.blueColor,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "Book",
                                          style: DataConstants.commonTextStyle(
                                              weight: FontWeight.w600,
                                              fontSize: 11,
                                              color: DataConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 10.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            color: DataConstants.blueColor,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SvgPicture.asset(
                                            "assets/home/message.svg",
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 36.w,
                          decoration: BoxDecoration(
                              color: DataConstants.bgGreyColor,
                              borderRadius: BorderRadius.all(Radius.circular(11))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/home/ladydr.png")),
                                CommonLabel(
                                    text: "Dr. Needa",
                                    size: 10,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w600),
                                CommonLabel(
                                    text: "Stress Therapist",
                                    size: 8,
                                    color: DataConstants.blackColor,
                                    weight: FontWeight.w500),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 15.w,
                                      height: 3.h,
                                      decoration: BoxDecoration(
                                          color: DataConstants.blueColor,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "Book",
                                          style: DataConstants.commonTextStyle(
                                              weight: FontWeight.w600,
                                              fontSize: 11,
                                              color: DataConstants.whiteColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 10.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            color: DataConstants.blueColor,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: SvgPicture.asset(
                                            "assets/home/message.svg",
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemModel {
  String label;
  Color color;
  bool isSelected;

  ItemModel(this.label, this.color, this.isSelected);
}
