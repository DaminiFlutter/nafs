import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/dataconstants.dart';
import 'common_label.dart';

class HeaderOfHomeScreen extends StatelessWidget {
  const HeaderOfHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Container(
          width: 10.w,
          height: 10.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/profile/image.png'))),
        ),
        SizedBox(width: 10,),
        Text(
          "Irfad Khan",
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w600,
              fontSize: 18,
              color: DataConstants.blackColor),
        ),
        Spacer(),
        SvgPicture.asset("assets/home/bell.svg")

      ],
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            focusColor: DataConstants.lightBlackColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide:
                BorderSide(color: DataConstants.lightBlackColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide:
                BorderSide(color: DataConstants.lightBlackColor.withOpacity(0.5))),
            border: OutlineInputBorder(
              // gapPadding: 10,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            hintText: "Search",
            hintStyle: DataConstants.commonTextStyle(
                weight: FontWeight.w500,
                fontSize: 16,
                color: DataConstants.lightBlackColor),
            suffixIcon: Icon(
              Icons.mic_none_rounded,
              color: DataConstants.lightBlackColor,
            ),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: DataConstants.lightBlackColor,
            )));
  }
}

class Categories extends StatelessWidget {
  final String text;
  final String imageName;
  const Categories({Key? key,required this.text,required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: Color(0xffF0F1F5),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Stack(
            children: [
              Center(
                  child: Image(image: AssetImage("assets/home/$imageName"),)),
            ],
          ),
        ),
        CommonLabel(text: text, size: 12, color: DataConstants.lightBlackColor, weight: FontWeight.w500)
      ],
    );
  }
}






