import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class BottomNavigationItems extends StatelessWidget {
  final Function()? firstScreen;
  final Function()? secondScreen;
  final Function()? thirdScreen;
  final Function()? fourthScreen;
  final int currentIndex;
  const BottomNavigationItems(
      {super.key,
      required this.firstScreen,
      required this.secondScreen,
      required this.thirdScreen,
      required this.fourthScreen,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentIndex == 0
            ? CircleAvatar(
                radius: 30,
                backgroundColor: MainColors.teal,
                child: GestureDetector(
                  onTap: firstScreen,
                  child: SvgPicture.asset(
                    'assets/images/house.svg',
                    width: 35,
                    height: 35,
                  ),
                ),
              )
            : GestureDetector(
                onTap: firstScreen,
                child: SvgPicture.asset(
                  'assets/images/house.svg',
                  width: 35,
                  height: 35,
                ),
              ),
        currentIndex == 1
            ? CircleAvatar(
                radius: 30,
                backgroundColor: MainColors.teal,
                child: GestureDetector(
                  onTap: secondScreen,
                  child: SvgPicture.asset(
                    'assets/images/money.svg',
                    width: 35,
                    height: 35,
                  ),
                ),
              )
            : GestureDetector(
                onTap: secondScreen,
                child: SvgPicture.asset(
                  'assets/images/money.svg',
                  width: 35,
                  height: 35,
                ),
              ),
        currentIndex == 2
            ? CircleAvatar(
                radius: 30,
                backgroundColor: MainColors.teal,
                child: GestureDetector(
                  onTap: thirdScreen,
                  child: SvgPicture.asset(
                    'assets/images/browser.svg',
                    width: 35,
                    height: 35,
                  ),
                ),
              )
            : GestureDetector(
                onTap: thirdScreen,
                child: SvgPicture.asset(
                  'assets/images/browser.svg',
                  width: 35,
                  height: 35,
                ),
              ),
        currentIndex == 3
            ? CircleAvatar(
                radius: 30,
                backgroundColor: MainColors.teal,
                child: GestureDetector(
                  onTap: fourthScreen,
                  child: SvgPicture.asset(
                    'assets/images/settings.svg',
                    width: 35,
                    height: 35,
                  ),
                ),
              )
            : GestureDetector(
                onTap: fourthScreen,
                child: SvgPicture.asset(
                  'assets/images/settings.svg',
                  width: 35,
                  height: 35,
                ),
              ),
      ],
    );
  }
}
