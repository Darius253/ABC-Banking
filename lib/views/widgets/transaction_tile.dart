import 'dart:ui';

import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/transaction_details_tile.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String accountName;
  final String amount;
  const TransactionTile(
      {super.key, required this.accountName, required this.amount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => showPopUp(context, accountName, amount)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(222, 24, 33, 32),
              borderRadius: BorderRadius.circular(25),
            ),
            child: TransactionDetailTile(
              title: accountName,
              subtitle: 'Fees Payment',
              trailing: amount,
            )),
      ),
    );
  }

  void showPopUp(BuildContext context, String accountName, String amount) {
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
                child: TransactionDetails(
                  accountName: accountName,
                  amount: amount,
                ),
              ),
            ],
          );
        });
  }
}
