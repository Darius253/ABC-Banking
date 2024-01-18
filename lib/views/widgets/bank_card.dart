import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? firstColor;
  final Color? secondColor;
  final Color? thirdColor;
  final Widget? widget;
  final bool? borderColor;
  const BankCard({
    super.key,
    this.height,
    this.width,
    this.firstColor,
    this.secondColor,
    this.thirdColor,
    this.widget,
    this.borderColor,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        height: height ?? MediaQuery.sizeOf(context).height * 0.27,
        decoration: BoxDecoration(
          border: borderColor == true
              ? Border.all(color: MainColors.purple)
              : Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(0.3, 1.9),
            colors: [
              firstColor ?? const Color.fromARGB(255, 124, 222, 204),
              secondColor ??
                  const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              thirdColor ?? const Color.fromARGB(255, 138, 111, 201),
            ],
          ),
        ),
        child: widget ?? const SizedBox.shrink());
  }
}
