import 'dart:ui';

import 'package:abc_banking/views/home_screens/account/add_account.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future<void> loading(BuildContext context, bool? sending) async {
  return showDialog<void>(
    barrierColor: MainColors.teal,
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Center(
        child: sending == false
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
            : LottieBuilder.asset('assets/images/loader.json'),
      );
    },
  );
}

Future<void> success(
  BuildContext context,
) async {
  return showDialog<void>(
    barrierColor: MainColors.teal,
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Center(
        child: LottieBuilder.asset('assets/images/success.json'),
      );
    },
  );
}

void addAccount(BuildContext context) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      context: context,
      builder: (context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: const AddAccount(),
            ),
          ],
        );
      });
}
