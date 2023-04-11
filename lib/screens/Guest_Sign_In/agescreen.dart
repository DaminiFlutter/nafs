import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Type_of_Theropy.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'identistatus.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  final TextEditingController _ageController = TextEditingController();
  final  _formKey = GlobalKey<FormState>();

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
                          "How old are you ?",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.bold,
                              fontSize: DataConstants.twentyFour,
                              color: DataConstants.blackColor),
                        ),
                        Text(
                          "Choose age",
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
                    TextFormField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                      ],
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter age";
                        }
                        if (int.parse(val) < 13) {
                          return "Age should be greater than 13";
                        }
                        if (int.parse(val) > 99) {
                          return "Age should be less than 99";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter age",
                          enabled: true,
                          fillColor: DataConstants.blackColor,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: DataConstants.blackColor)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: DataConstants.inActiveColor
                                      .withOpacity(0.5)))),
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
              if(_formKey.currentState!.validate()) {
                Get.to(IdentityStatus());
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
}
