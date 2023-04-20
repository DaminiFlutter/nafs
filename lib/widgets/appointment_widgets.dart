import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class CommonContainer extends StatelessWidget {
  final double radius;
  final Color bgColor;
  final Color borderColor;
  final String text;

  // final double height;
  // final double width;

  const CommonContainer(
      {Key? key,
      required this.radius,
      required this.bgColor,
      // required this.height,
      // required this.width,
      required this.borderColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: bgColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
