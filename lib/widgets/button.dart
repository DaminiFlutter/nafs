import 'package:flutter/material.dart';

import '../constants/dataconstants.dart';
import 'package:sizer/sizer.dart';
class CommonButton extends StatelessWidget {
  final String text;
  const CommonButton({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
          color: DataConstants.activeColor,
          borderRadius: BorderRadius.all(Radius.circular(27))),
      child: Center(
        child: Text(text,style: DataConstants.commonTextStyle(weight: FontWeight.w600, fontSize: 20, color: DataConstants.whiteColor),),
      ),
    );
  }
}
