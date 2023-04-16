import 'package:flutter/material.dart';
import 'package:nafs/screens/home/payment_screen.dart';
import 'package:nafs/widgets/button.dart';
import 'package:nafs/widgets/common_label.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _genderCOntroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.text = "Ebad Ali";
    _emailController.text = "ebad.ali@gmail.com";
    _phoneController.text = "+91 (555) 000-0000";
    _locationController.text = "India";
    _genderCOntroller.text = "Male";
  }

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
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                          color: DataConstants.activeColor,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/profile/image.png"))),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(PersonalDetails());
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.w, top: 12.h),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(
                                Icons.edit,
                                size: 15,
                                color: DataConstants.blueColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w600,
                          fontSize: 17,
                          color: DataConstants.blackColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF0F1F5)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w600,
                          fontSize: 17,
                          color: DataConstants.blackColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF0F1F5)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w600,
                          fontSize: 17,
                          color: DataConstants.blackColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF0F1F5)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w600,
                          fontSize: 17,
                          color: DataConstants.blackColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _locationController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF0F1F5)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ),SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      style: DataConstants.commonTextStyle(
                          weight: FontWeight.w600,
                          fontSize: 17,
                          color: DataConstants.blackColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _genderCOntroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffF0F1F5)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)))),
                    )
                  ],
                ), SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(PaymentScreen());
                  },
                    child: CommonButton(text: "Save Changes"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
