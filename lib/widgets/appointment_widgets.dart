import 'package:flutter/cupertino.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:sizer/sizer.dart';

class CommonContainer extends StatefulWidget {
  final double radius;
  final Color bgColor;
  final Color borderColor;
  final String text;
  final Color textColor;

  // final double height;
  // final double width;

  const CommonContainer(
      {Key? key,
      required this.radius,
      required this.bgColor,
      required this.textColor,
      // required this.height,
      // required this.width,
      required this.borderColor,
      required this.text})
      : super(key: key);

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  int selectedIndex= 0;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,

      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          color: widget.bgColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
          child: Center(
            child: Text(widget.text,style: DataConstants.commonTextStyle(weight: FontWeight.w500, fontSize: 16, color: widget.textColor),),
          ),
        ),
      ),
    );
  }
}
