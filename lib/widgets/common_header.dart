import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../constants/dataconstants.dart';

class CommonHeader extends StatelessWidget {
  final String text;
  final bool showIcon;

  const CommonHeader({Key? key, required this.text, required this.showIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          showIcon ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        showIcon
            ? SvgPicture.asset("assets/login/arrow-left.svg")
            : SizedBox.shrink(),
        showIcon
            ? SizedBox(
                width: 25.w,
              )
            : SizedBox.shrink(),
        Center(
            child: Text(
          text,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w600,
              fontSize: 21,
              color: DataConstants.blackColor),
        )),
      ],
    );
  }
}
