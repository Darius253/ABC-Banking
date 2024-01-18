import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/transaction_details_tile.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  final String accountName;
  final String amount;

  const TransactionDetails({
    super.key,
    required this.accountName,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                MainColors.black,
                Color.fromARGB(221, 47, 71, 67),
              ]),
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: SizedBox()),
              Center(
                child: Text(
                  'Transaction Details',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                ),
              ),
              const Expanded(child: SizedBox()),
              CircledButton(
                icon: Icons.close,
                onTap: (() => Navigator.pop(context)),
              ),
            ],
          ),
        ),
        TransactionDetailTile(
          title: accountName,
          subtitle: '23/10/2023, 10:59pm',
          trailing: amount,
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Color.fromARGB(113, 158, 158, 158),
        ),
        const TransactionDetailsItem(
          header: 'Transaction ID',
          details: 'ABC123456789',
        ),
        const TransactionDetailsItem(
          header: 'Account Number',
          details: '12345698766',
        ),
        const TransactionDetailsItem(
          header: 'Balance After Transaction',
          details: '£1500',
        ),
        const TransactionDetailsItem(
          header: 'Reference',
          details: 'Fees payment',
        ),
      ]),
    );
  }
}
