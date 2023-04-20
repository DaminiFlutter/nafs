import 'package:flutter/material.dart';

import '../constants/dataconstants.dart';
import 'package:sizer/sizer.dart';
class CommonLabel extends StatelessWidget {
  final FontWeight weight;
  final double size;
  final Color color;
  final String text;
  const CommonLabel({Key? key,required this.text,required this.size,required this.color,required this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 6,
      softWrap: true,
      style: DataConstants.commonTextStyle(
          weight: weight,
          fontSize: size,
          color: color),
    );
  }
}
