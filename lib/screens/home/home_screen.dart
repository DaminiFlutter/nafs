import 'package:flutter/material.dart';
import 'package:nafs/constants/dataconstants.dart';
import 'package:nafs/screens/profile/profile.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../widgets/home_screen_widgets.dart';
import 'Home_bottom_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;
  static List  _pages = [
    HomeBottomScreen(),
    ProfileScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(_selectedPageIndex),
        bottomNavigationBar: bottomNavigationBar);
  }

  Widget get bottomNavigationBar {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: DataConstants.greyColor, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.grey[500],
            showUnselectedLabels: true,
            currentIndex: _selectedPageIndex,
            onTap: (value) {
              setState(() {
                _selectedPageIndex = value;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SvgPicture.asset("assets/home/home.svg"),
                        Text("Home")
                      ],
                    ),
                  ),
                  label: ""
                  // title: new Text('Home'),
                  ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/home/categories.svg"),
                        Text("Categories")
                      ],
                    ),
                  ),
                  label: ""
                  // title: new Text('Order'),
                  ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new SvgPicture.asset(
                          "assets/home/profile.svg",
                          color: DataConstants.blackColor,
                        ),
                        Text("Profile")
                      ],
                    ),
                  ),
                  label: ""
                  // title: new Text('Messages'),
                  ),
            ],
          ),
        ));
  }
}
