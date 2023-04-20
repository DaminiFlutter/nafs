import 'package:flutter/material.dart';
import 'package:nafs/domain/state.dart';
import 'package:nafs/screens/onboarding/onboardingScreen.dart';
import 'package:nafs/widgets/button.dart';
import 'package:sizer/sizer.dart';
import '../../constants/dataconstants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  final Logic logic = Logic();
  int selectedIndex = 0;
  final List<Map<String, dynamic>> _languageList = [
    {
      "countryName": "English",
      "path": "assets/onboarding/english.svg",
      "isSelected": true
    },
    {
      "countryName": "Arabic",
      "path": "assets/onboarding/arabic.svg",
      "isSelected": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 5.h, left:5.h,top: 20.h,bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Choose Language",
                softWrap: true,
                textAlign: TextAlign.center,
                style: DataConstants.commonTextStyle(
                    weight: FontWeight.bold,
                    fontSize: DataConstants.twentyFour,
                    color: DataConstants.blackColor),
              ),
              Text(
                "Please choose your preferred therapy language, you can change it later in profile settings",
                softWrap: true,
                textAlign: TextAlign.center,
                style: DataConstants.commonTextStyle(
                    weight: FontWeight.w500,
                    height: 2,
                    fontSize: DataConstants.eighteen,
                    color: DataConstants.lightBlackColor),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                child: ListView.builder(
                  itemCount: _languageList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                      // Logic.streamController.sink.add(true);
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
                          color: selectedIndex == index
                              ? DataConstants.blueColor.withOpacity(0.2)
                              : Color(0xffF0F1F5)),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 30.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "${_languageList[index]["path"]}"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${_languageList[index]["countryName"]}",
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: DataConstants.commonTextStyle(
                                          weight: FontWeight.w500,
                                          fontSize: DataConstants.sixteen,
                                          color: selectedIndex == index
                                              ? DataConstants.activeColor
                                              : DataConstants.blackColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selectedIndex == index
                                    ? SvgPicture.asset(
                                        "assets/onboarding/tick.svg")
                                    : SizedBox.shrink(),
                              ],
                            )

                            //
                            // Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Get.to(Onboarding());
                }
                ,
                child: CommonButton(
                  text: 'Continue',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
