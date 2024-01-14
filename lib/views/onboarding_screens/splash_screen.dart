import 'dart:math';

import 'package:abc_banking/views/widgets/card.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainColors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Transform.rotate(
                    angle: pi / 1.7,
                    child: BankCard(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.32)),
              ),
              Padding(
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
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.32,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
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
          ),
        ));
  }
}
