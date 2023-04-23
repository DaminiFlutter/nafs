// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:nafs/screens/login/Sign_In.dart';
import 'package:get/get.dart';
import '../../constants/dataconstants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  int _pageIndex = 0;
  PageController controller = PageController();
  final List<Widget> _demo = [
    _onboardingScreenOne(),
    _onboardingScreenTwo(),
    _onboardingScreenThree(),
  ];
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.decelerate,
  ));

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SlideTransition(
        position: _offsetAnimation,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.80,
                width: double.infinity,
                child: PageView(
                  controller: controller,
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  children: _demo,
                ),
              ),
              CarouselIndicator(
                width: 10,
                height: 10,
                activeColor: DataConstants.activeColor,
                color: DataConstants.inActiveColor,
                count: _demo.length,
                index: _pageIndex,
                space: 7,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip",
                    style: DataConstants.commonTextStyle(
                        weight: FontWeight.w600,
                        fontSize: DataConstants.twenty,
                        color: DataConstants.skipColor),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        if (_pageIndex == 2) {
                          // _pageIndex = 0;
                          Get.to(SignIn());
                        } else {
                          _pageIndex = _pageIndex + 1;
                        }
                        controller.animateToPage(_pageIndex,
                            duration: const Duration(microseconds: 100),
                            curve: Curves.easeIn);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: DataConstants.blueColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(27.5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Text(
                          "Next",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: DataConstants.commonTextStyle(
                              weight: FontWeight.w600,
                              height: 0,
                              fontSize: DataConstants.twenty,
                              color: DataConstants.whiteColor),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  static Widget _onboardingScreenOne() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset("assets/onboarding/logo.svg"),
        SvgPicture.asset("assets/onboarding/onboardingOne.svg"),
        Text(
          "Help that is right for you",
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w600,
              fontSize: DataConstants.twentyFive,
              color: DataConstants.blackColor),
        ),
        Text(
          "Wide variety of specialties and therapy\n styles. Get matched to a therapist that\n fits your needs.",
          textAlign: TextAlign.center,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w500,
              fontSize: DataConstants.eighteen,
              color: DataConstants.lightBlackColor),
        )
      ],
    );
  }

  static Widget _onboardingScreenTwo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset("assets/onboarding/logo.svg"),
        SvgPicture.asset("assets/onboarding/onboardingTwo.svg"),
        Text(
          "Help that matters",
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w600,
              fontSize: DataConstants.twentyFive,
              color: DataConstants.blackColor),
        ),
        Text(
          "Write to your therapist. Get feedback,\n advice and guidance. Work together to\n make a positive change.",
          textAlign: TextAlign.center,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w500,
              fontSize: DataConstants.eighteen,
              color: DataConstants.lightBlackColor),
        )
      ],
    );
  }

  static Widget _onboardingScreenThree() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset("assets/onboarding/logo.svg"),
        SvgPicture.asset("assets/onboarding/onboardingThree.svg"),
        Text(
          "Help whenever you need",
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w600,
              fontSize: DataConstants.twentyFive,
              color: DataConstants.blackColor),
        ),
        Text(
          "As often as you want and whenever\n you like. Communicate with your\n therapist on your own time and at your\n own pace.",
          textAlign: TextAlign.center,
          style: DataConstants.commonTextStyle(
              weight: FontWeight.w500,
              fontSize: DataConstants.eighteen,
              color: DataConstants.lightBlackColor),
        )
      ],
    );
  }
}
