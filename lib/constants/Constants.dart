import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';

const Color kWhite = Colors.white;
const Color kBlack = Colors.black;

FormHeaderText(name) {
  return Padding(
    padding: EdgeInsets.only(top: 12, bottom: 12),
    child: Text(
      "${name}",
      softWrap: true,
      style: DataConstants.commonTextStyle(
          weight: FontWeight.w600,
          height: 1,
          fontSize: DataConstants.seventeen,
          color: DataConstants.blackColor),
    ),
  );
}
