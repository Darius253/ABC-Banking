import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

Future<void> loading(BuildContext context) async {
  return showDialog<void>(
    barrierColor: MainColors.teal,
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return const Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white)));
    },
  );
}
