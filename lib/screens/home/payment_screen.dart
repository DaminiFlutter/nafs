import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nafs/widgets/button.dart';
import 'package:nafs/widgets/common_label.dart';
import '../../widgets/common_header.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'congratulation_screen.dart';
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController _cardNumController = TextEditingController();
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  bool checkvalue = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cardNameController.text="Eraj Ali";
    _cardNumController.text="1234 5678 8765";
    _cvvController.text = "25/6";
    _expiryController.text = "25/6";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommonHeader(text: "Payment", showIcon: true),
              SizedBox(
                height: 25
              ),
              Text(
                "Choose a payment method",
                textAlign: TextAlign.start,
                style: DataConstants.commonTextStyle(
                    weight: FontWeight.w600,
                    fontSize: 18,
                    color: DataConstants.lightBlackColor),
              ),
              SizedBox(
                height: 25
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                SvgPicture.asset("assets/payment/paypal.svg")),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                SvgPicture.asset("assets/payment/visa.svg")),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                SvgPicture.asset("assets/payment/mastercard.svg")),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                SvgPicture.asset("assets/payment/gpay.svg")),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF0F1F5)),
                    child: Stack(
                      children: [
                        Center(
                            child:
                                SvgPicture.asset("assets/payment/add.svg")),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card number",
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w600,
                        fontSize: 17,
                        color: DataConstants.blackColor),
                  ),
                  SizedBox(
                   height: 10
                  ),
                  TextFormField(
                    controller: _cardNumController,
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
                height: 25
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card holder name",
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w600,
                        fontSize: 17,
                        color: DataConstants.blackColor),
                  ),
                  SizedBox(
                   height: 10
                  ),
                  TextFormField(
                    controller: _cardNameController,
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
                height: 25
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry date",
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w600,
                            fontSize: 17,
                            color: DataConstants.blackColor),
                      ),
                      SizedBox(
                       height: 10
                      ),
                      Container(
                        width: 40.w,
                        child: TextFormField(
                          controller: _expiryController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffF0F1F5)),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV",
                        style: DataConstants.commonTextStyle(
                            weight: FontWeight.w600,
                            fontSize: 17,
                            color: DataConstants.blackColor),
                      ),
                      SizedBox(
                       height: 10
                      ),
                      Container(
                        width: 40.w,
                        child: TextFormField(
                          controller: _cvvController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffF0F1F5)),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                        ),
                      )
                    ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonLabel(text: "Total", size: 18, color: DataConstants.lightBlackColor , weight: FontWeight.w500),
                  CommonLabel(text: "\$45.00", size: 18, color: DataConstants.lightBlackColor , weight: FontWeight.w500)
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Get.to(Congratulation());
                },
                  child: CommonButton(text: "Pay Now"))
            ],
          ),
        ),
      ),
    );
  }
}
