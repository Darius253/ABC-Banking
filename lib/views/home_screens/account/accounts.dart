import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/transaction_details_tile.dart';
import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Accounts',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
        ),
        actions: [
          CircledButton(
              height: 55, icon: Icons.add, onTap: (() => addAccount(context)))
        ],
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                PageRouteBuilder(
                  barrierDismissible: true,
                  opaque: false,
                  pageBuilder: (_, anim1, anim2) => const TransferMoneyScreen(
                    payeeName: 'Darius Tron',
                    accountNumber: '1234567890',
                    sortNumber: '123456789',
                  ),
                ),
              ),
              child: const TransactionDetailTile(
                subtitle: 'SortNumber',
                title: 'Darius Tron',
                trailing: 'AccountNumber',
              ),
            );
          })),
    );
  }
}
