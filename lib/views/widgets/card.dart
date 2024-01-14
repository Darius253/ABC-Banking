import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final double? width;
  final double? height;
  const BankCard({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        height: height ?? MediaQuery.sizeOf(context).height * 0.27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1.2, 2),
            colors: [
              const Color.fromARGB(255, 124, 222, 204),
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              const Color.fromARGB(255, 138, 111, 201),
            ],
          ),
        ));
  }
}
