import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/login/Sign_In.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

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
                    "Reset Password",
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
                    "Set a new password",
                    textAlign: TextAlign.center,
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w400,

                        fontSize: DataConstants.eighteen,
                        color: DataConstants.lightBlackColor),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                ResetPasswordForm(),
                ResetButton(),
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
                              color: Colors.cyan.shade300),
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

  ResetPasswordForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeaderText('New Password'),
        TextFormField(
          controller: password,
          validator: (v) {
            if (v!.isEmpty) {
              return 'Please Enter Your Password';
            } else if (v.length < 2) {
              return "Please enter valid password";
            }
            return null;
          },
          enableSuggestions: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 1.2.h, vertical: 1.5.h),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe4e4e4), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(
                color: Color(0xffe4e4e4),
              ),
            ),
            hintText: 'Enter New Password',
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w400,
                height: 1,
                fontSize: DataConstants.thirteen,
                color: Color(0xffAAAAAA)),
          ),
        ),
        FormHeaderText('Confirm New Password'),
        TextFormField(
          controller: confirmpassword,
          validator: (v) {
            if (v!.isEmpty) {
              return 'Please Confirm Your Password';
            } else if (v.length < 2) {
              return "Please Confirm valid password";
            }
            return null;
          },
          enableSuggestions: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 1.2.h, vertical: 1.5.h),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe4e4e4), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(
                color: Color(0xffe4e4e4),
              ),
            ),
            hintText: 'Enter New Password',
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w400,
                height: 1,
                fontSize: DataConstants.thirteen,
                color: Color(0xffAAAAAA)),
          ),
        ),
      ],
    );
  }

  ResetButton() {
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
          "Reset Password",
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
}
