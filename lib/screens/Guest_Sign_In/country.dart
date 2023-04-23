import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/notifier/country.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'identistatus.dart';
import 'lookingFor.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  final TextEditingController _ageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> _countries = [
    "Algeria",
    "Bahrain",
    "Egypt",
    "Iran",
    "Iraq",
    "Israel",
    "Jordan",
    "Kuwait",
    "Lebanon",
    "Libya",
    "Morocco",
    "Oman",
    "Qatar",
    "Saudi Arabia",
    "Syria",
    "Tunisia",
    "United Arab Emirates",
    "Yemen",
    "UK",
    "USA"
  ];
  int selectedIndex = 0;
  String selectedName = "Lebanon";

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
              child: Form(
                key: _formKey,
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
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Which country are you in ?",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.bold,
                              fontSize: DataConstants.twentyFour,
                              color: DataConstants.blackColor),
                        ),
                        Text(
                          "Select the residential place",
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
                      height: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 7.h,
                                      height: 1.h,
                                      decoration: BoxDecoration(
                                          color: DataConstants.lightBlackColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                    ),
                                    Container(
                                      height: 400,
                                      child: ListView.builder(
                                          itemCount: _countries.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                selectedIndex = index;
                                                selectedName =
                                                    _countries[index];
                                                setState(() {});
                                                Navigator.of(context).pop();
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 8),
                                                child: Container(
                                                  height: 4.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                      color: selectedIndex ==
                                                              index
                                                          ? DataConstants
                                                              .blueColor
                                                              .withOpacity(0.3)
                                                          : Color(0xffE0E0E0)
                                                              .withOpacity(
                                                                  0.3)),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                     SizedBox(width: 40.w,),

                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            _countries[index],
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: DataConstants
                                                                .commonTextStyle(
                                                                    weight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                    color: DataConstants
                                                                        .blackColor),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(width: 30.w,),

                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          selectedIndex == index
                                                              ? SvgPicture.asset(
                                                                  "assets/onboarding/tick.svg")
                                                              : SizedBox
                                                                  .shrink(),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 6.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(color: DataConstants.greyColor)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(selectedName),
                              SvgPicture.asset("assets/onboarding/dropdown.svg")
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Get.to(LookingForScreen());
              }
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

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
