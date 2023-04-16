import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/widgets/button.dart';
import 'package:nafs/widgets/common_label.dart';
import 'package:get/get.dart';
import '../Guest_Sign_In/recommended_therapist.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Spacer(),
              Center(
                  child: SvgPicture.asset("assets/payment/congratulation.svg")),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CommonLabel(
                    text: "Congratulations!",
                    size: 28,
                    color: DataConstants.blueColor,
                    weight: FontWeight.w600),
              ),
              CommonLabel(
                  text: "Your payment is successfully",
                  size: 16,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w500),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Get.to(RecommnededTherapist());
                  },
                  child: CommonButton(text: "Back"))
            ],
          ),
        ),
      ),
    );
  }
}
