import 'dart:async';
import 'dart:math';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isVisible = true;
      });
    });

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginScreen(),
      // transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //   const begin = Offset(5.0, 6.0);
      //   const end = Offset.zero;
      //   const curve = Curves.linear;

      //   var tween =
      //       Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      //   return SlideTransition(
      //     position: animation.drive(tween),
      //     child: child,
      //   );
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainColors.black,
        body: SafeArea(
          child: Stack(children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 3),
              top: isVisible ? 0 : -100,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Transform.rotate(
                  angle: pi / 1.7,
                  child: BankCard(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.32),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              right: isVisible ? 0 : -100,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * 0.29),
                child: Transform.rotate(
                    angle: -pi / 9.5,
                    child: Shimmer(
                      period: const Duration(milliseconds: 2000),
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 124, 222, 204),
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                        const Color.fromARGB(255, 138, 111, 201),
                      ]),
                      child: BankCard(
                        borderColor: true,
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.32,
                      ),
                    )),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'By Darius',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: MediaQuery.sizeOf(context).height * 0.7),
              child: ListView(
                children: const [
                  Text(
                    'Banking Made Easier And Safe',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Send and Receive Money Anytime & Anywhere',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 122, 121, 121),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
