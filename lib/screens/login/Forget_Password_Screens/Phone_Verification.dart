// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/login/Forget_Password_Screens/Reset_Password.dart';
import 'package:nafs/screens/login/Sign_In.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PhoneVerification extends StatefulWidget {
  final mobilenumber;

  const PhoneVerification({
    super.key,
    this.mobilenumber,
  });

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstcontroller = TextEditingController();

  TextEditingController secondcontroller = TextEditingController();

  TextEditingController thirdcontroller = TextEditingController();

  TextEditingController fourthcontroller = TextEditingController();

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
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/login/arrow-left.svg")),
                Center(
                  child: Text(
                    "Phone Verification",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.bold,
                        fontSize: DataConstants.twentyFour,
                        color: DataConstants.blackColor),
                  ),
                ),
                Center(
                  child: Text(
                    "Please enter verification code sent to \n your phone ${widget.mobilenumber}",
                    textAlign: TextAlign.center,
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w500,
                        height: 1.5,
                        fontSize: DataConstants.eighteen,
                        color: DataConstants.lightBlackColor),
                  ),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                OtpBox(),
                OtpVerifyButton(),
                Center(
                  child: RichText(
                    softWrap: true,
                    maxLines: 3,
                    textScaleFactor: 1,
                    text: TextSpan(
                      text: "Go back to",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w500,
                          height: 3,
                          fontSize: DataConstants.thirteen,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(SignIn()),
                          text: ' Sign In',
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w500,
                              height: 3,
                              fontSize: DataConstants.thirteen,
                              color: DataConstants.blueColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  OtpVerifyButton() {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          Get.snackbar('OTP send ', 'Successful');
        }
      },
      child: Container(
        width: 100.w,
        margin: EdgeInsets.only(top: 5.h),
        alignment: Alignment.center,
        height: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Color.fromARGB(255, 77, 169, 223)),
        child: Text(
          "Verify",
          softWrap: true,
          textAlign: TextAlign.center,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w500,
              height: 0,
              fontSize: DataConstants.sixteen,
              color: Colors.white),
        ),
      ),
    );
  }

  OtpBox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.5, color: Color(0xffaaaaaa))),
          height: 7.h,
          width: 7.h,
          child: TextFormField(
            controller: firstcontroller,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.5, color: Color(0xffaaaaaa))),
          height: 7.h,
          width: 7.h,
          child: TextFormField(
            controller: secondcontroller,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.5, color: Color(0xffaaaaaa))),
          height: 7.h,
          width: 7.h,
          child: TextFormField(
            controller: thirdcontroller,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 0.5, color: Color(0xffaaaaaa))),
          height: 7.h,
          width: 7.h,
          child: TextFormField(
            controller: fourthcontroller,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
                Get.snackbar('OTP Verify Successfully', 'message');
                Get.to(ResetPassword());
              }
            },
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    );
  }
}
