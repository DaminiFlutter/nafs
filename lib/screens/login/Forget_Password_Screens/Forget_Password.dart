import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nafs/constants/Constants.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/login/Forget_Password_Screens/Phone_Verification.dart';
import 'package:nafs/screens/login/Sign_In.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  TextEditingController MobileNumber = TextEditingController();

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
                    "Forget Password",
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
                    "Please enter your phone number to\n receive a verification code to create\n a new password",
                    textAlign: TextAlign.center,
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w500,
                        height: 1.5,
                        fontSize: DataConstants.eighteen,
                        color: DataConstants.blackColor),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                ForgetpasswordForm(),
                ForgetPasswordButton(),
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

  ForgetpasswordForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }

  ForgetPasswordButton() {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          Get.snackbar('OTP send ', 'Successful');
          Get.to(PhoneVerification(
            mobilenumber: MobileNumber.text,
          ));
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
          "Send",
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
