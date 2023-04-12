import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafs/screens/profile/personal_details.dart';
import 'package:nafs/widgets/common_header.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static String assetPath = "assets/profile";
  final List<Map<String, String>> _profileContent = [
    {"name": "History", "path": "$assetPath/rotate.svg"},
    {"name": "Personal Details", "path": "$assetPath/user.svg"},
    {"name": "Address", "path": "$assetPath/map-pin.svg"},
    {"name": "Language", "path": "$assetPath/map.svg"},
    {"name": "About", "path": "$assetPath/info.svg"},
    {"name": "Help", "path": "$assetPath/help-circle.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonHeader(text: "Profile", showIcon: false),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: DataConstants.activeColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/profile/image.png"))),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(PersonalDetails());
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.w,top: 8.h),
                        height: 25,width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF0F1F5)),
                        child: Stack(
                          children: [
                            Center(
                                child:  Icon(Icons.edit,size: 15,),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ebad Ali",
                  style: DataConstants.commonTextStyle(
                      weight: FontWeight.w600,
                      fontSize: 18,
                      color: DataConstants.lightBlackColor),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    itemCount: _profileContent.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffF0F1F5)),
                                  child: Stack(
                                    children: [
                                      Center(
                                          child: SvgPicture.asset(
                                              _profileContent[index]["path"]!)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  _profileContent[index]["name"]!,
                                  style: DataConstants.commonTextStyle(
                                      weight: FontWeight.w500,
                                      fontSize: 14,
                                      color: DataConstants.blackColor),
                                ),
                                Spacer(),
                                SvgPicture.asset("assets/profile/arrow.svg")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      );
                    }),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                            child: Stack(
                              children: [
                                Center(
                                    child: SvgPicture.asset(
                                        "assets/profile/log-out.svg")),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Logout",
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                fontSize: 14,
                                color: DataConstants.redColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                            child: Stack(
                              children: [
                                Center(
                                    child: SvgPicture.asset(
                                        "assets/profile/trash-2.svg")),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Delete Profile",
                            style: DataConstants.commonTextStyle(
                                weight: FontWeight.w500,
                                fontSize: 14,
                                color: DataConstants.blackColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
