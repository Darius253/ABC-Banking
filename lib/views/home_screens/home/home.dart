import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HoomePage(),
      const Transactions(),
      const Accounts(),
      const Settings(),
    ];
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            notchMargin: 15,
            color: const Color.fromARGB(44, 0, 0, 0),
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationItems(
              currentIndex: currentIndex,
              firstScreen: () {
                setState(() {
                  currentIndex = 0;
                });

                _navigateToPage(0);
              },
              secondScreen: () {
                setState(() {
                  currentIndex = 1;
                });

                _navigateToPage(1);
              },
              thirdScreen: () {
                setState(() {
                  currentIndex = 2;
                });

                _navigateToPage(2);
              },
              fourthScreen: () {
                setState(() {
                  currentIndex = 3;
                });

                _navigateToPage(3);
              },
            )),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 111, 217, 200),
              shape: BoxShape.circle),
          child: InkWell(
            onTap: (() => Navigator.push(
                context,
                PageRouteBuilder(
                    barrierDismissible: true,
                    opaque: false,
                    pageBuilder: (_, anim1, anim2) =>
                        const TransferMoneyScreen()))),
            child: Lottie.asset('assets/images/send.json', fit: BoxFit.contain),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: pages,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }

  void _navigateToPage(int currentIndex) {
    _pageController.jumpToPage(
      currentIndex,
    );
  }
}
