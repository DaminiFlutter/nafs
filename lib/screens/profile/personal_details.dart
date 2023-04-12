import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../constants/dataconstants.dart';
import '../../widgets/common_header.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CommonHeader(text: "Personal Details", showIcon: true),
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
                Text("")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
