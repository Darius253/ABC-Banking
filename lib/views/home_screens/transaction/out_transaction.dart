import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class OutTransactions extends StatelessWidget {
  const OutTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        '10/01/2024',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
      ),
      children: const [
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
        TransactionTile(),
      ],
    );
  }
}
