import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/Guest_Sign_In/Gender_Identity.dart';
import 'package:nafs/screens/login/Forget_Password_Screens/Forget_Password.dart';
import 'package:nafs/screens/login/Sign_Up.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Guest_Sign_In/Type_of_Theropy.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool checkvalue = false;

  bool _passwordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

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
                    "Welcome Back,",
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
                    "Please sign in to nafsi",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w500,
                        height: 2,
                        fontSize: DataConstants.eighteen,
                        color: DataConstants.lightBlackColor),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                SignInForm(),
                SignInButton(),
                OrButton(),
                GuestSignInButton(),
                Center(
                  child: RichText(
                    softWrap: true,
                    maxLines: 3,
                    textScaleFactor: 1,
                    text: TextSpan(
                      text: "Are you new to nafsi ?",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w500,
                          height: 0,
                          fontSize: DataConstants.thirteen,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(SignUp()),
                          text: ' Sign Up',
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w500,
                              height: 0,
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

  SignInForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeaderText('Email'),
        TextFormField(
          validator: (v) {
            if (v == null || v.isEmpty) {
              return 'The Email field is required';
            }
            return null;
          },
          controller: Email,
          keyboardType: TextInputType.emailAddress,
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
            hintText: 'Enter Your Email',
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w500,
                height: 1,
                fontSize: DataConstants.sixteen,
                color: Color(0xffAAAAAA)),
          ),
        ),
        FormHeaderText('Password'),
        TextFormField(
          obscureText: !_passwordVisible,
          validator: (v) {
            if (v!.isEmpty) {
              return 'Please Enter Your Password';
            } else if (v.length < 2) {
              return "Please enter valid password";
            }
            return null;
          },
          controller: Password,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 1.2.h, vertical: 0.5.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color(0xffe4e4e4),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe4e4e4), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter Your Password',
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).primaryColorDark,
                size: 18,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w400,
                height: 1,
                fontSize: DataConstants.thirteen,
                color: Color(0xffAAAAAA)),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(ForgetPassword());
              },
              child: Text(
                "Forget Password",
                softWrap: true,
                textAlign: TextAlign.center,
                style: DataConstants.commonTextStyle(
                    weight: FontWeight.w600,
                    height: 2,
                    fontSize: DataConstants.fourteen,
                    color: Colors.cyan.shade300),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              isError: true,
              checkColor: Color.fromARGB(255, 4, 79, 18),
              fillColor: MaterialStateProperty.all(Colors.blue),
              value: checkvalue,
              onChanged: (checkboxValue) {
                setState(() {
                  checkvalue = checkboxValue ?? false;
                });
              },
            ),
            Text(
              "Remember Me",
              softWrap: true,
              style: DataConstants.commonTextStyle(
                  weight: FontWeight.w600,
                  height: 0,
                  fontSize: DataConstants.fourteen,
                  color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }

  SignInButton() {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          Get.snackbar('Sign In ', 'Successful');
        }
      },
      child: Container(
        width: 100.w,
        margin: EdgeInsets.only(top: 2.h),
        alignment: Alignment.center,
        height: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: DataConstants.blueColor),
        child: Text(
          "Sign In",
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

  OrButton() {
    return Padding(
      padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 0.1.h,
              margin: EdgeInsets.only(right: 1.h),
              color: Colors.grey.shade200,
            ),
          ),
          Text(
            "OR",
            softWrap: true,
            textAlign: TextAlign.center,
            style: DataConstants.commonTextStyle(
                weight: FontWeight.w500,
                height: 0,
                fontSize: DataConstants.sixteen,
                color: Colors.black),
          ),
          Expanded(
            child: Container(
              height: 0.1.h,
              margin: EdgeInsets.only(left: 1.h),
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }

  GuestSignInButton() {
    return GestureDetector(
      onTap: () {
        Get.to(TypeOfTheropy());
      },
      child: Container(
        width: 100.w,
        margin: EdgeInsets.only(bottom: 2.h),
        alignment: Alignment.center,
        height: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Color(0xffe4e4e4)),
        child: Text(
          "Guest Sign In",
          softWrap: true,
          textAlign: TextAlign.center,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w500,
              height: 0,
              fontSize: DataConstants.sixteen,
              color: Colors.black),
        ),
      ),
    );
  }
}
