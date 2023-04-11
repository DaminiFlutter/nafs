import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/login/Sign_In.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkvalue = false;

  bool _passwordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  TextEditingController MobileNumber = TextEditingController();

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
                    "Create New Account",
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
                    "Sign up by entering email and \n setting a password",
                    softWrap: true,
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
                SignInForm(),
                SignUpButton(),
                OrButton(),
                Center(
                  child: RichText(
                    softWrap: true,
                    maxLines: 3,
                    textScaleFactor: 1,
                    text: TextSpan(
                      text: "Already Have an account ?",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w500,
                          height: 0,
                          fontSize: DataConstants.thirteen,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(SignIn()),
                          text: ' Sign In',
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
                borderSide: BorderSide(color: Color(0xffF0F1F5), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(
                color: Color(0xffF0F1F5),
              ),
            ),
            hintText: 'Enter Your Email',
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w400,
                height: 1,
                fontSize: DataConstants.thirteen,
                color: Color(0xffAAAAAA)),
          ),
        ),
        FormHeaderText('Phone Number'),
        TextFormField(
          validator: (v) {
            if (v == null || v.isEmpty) {
              return 'The Mobile Number field is required';
            } else if (v.length != 10) {
              return 'The Mobile Number field is not in the correct format';
            }
            return null;
          },
          maxLength: 10,
          controller: MobileNumber,
          enableSuggestions: true,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: '',
            isDense: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 1.2.h, vertical: 1.5.h),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF0F1F5), width: 0.5),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(
                color: Color(0xffF0F1F5),
              ),
            ),
            hintText: 'Enter Your Phone Number',
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w400,
                height: 1,
                fontSize: DataConstants.thirteen,
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
                color: Color(0xffF0F1F5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF0F1F5), width: 0.5),
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
      ],
    );
  }

  SignUpButton() {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          Get.snackbar('Sign Up ', 'Successful');
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
          "Sign Up",
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
}
