import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class OutTransactions extends StatelessWidget {
  const OutTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionTile(
          shape: Border.all(color: Colors.black),
          title: Text(
            '2024',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
          children: [
            ExpansionTile(
                shape: Border.all(color: Colors.black),
                title: Text(
                  'December',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                ),
                children: [
                  ExpansionTile(
                    title: Text(
                      '10/01/2024',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: const Color.fromARGB(168, 255, 255, 255),
                          ),
                    ),
                    children: const [
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                      TransactionTile(
                        accountName: 'Kingston University',
                        amount: '£15900.00',
                      ),
                    ],
                  ),
                ]),
          ]),
    );
  }
}
