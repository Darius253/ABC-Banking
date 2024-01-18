import 'package:abc_banking/views/home_screens/transaction/in_transaction.dart';
import 'package:abc_banking/views/home_screens/transaction/out_transaction.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/transaction_widgets.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  bool isSelected = false;
  int currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const InTransactions(),
      const OutTransactions(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Transaction History',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Balance(
              text: 'Total Transactions',
              amount: '35,000.00',
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'Print Statement',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
              ),
              trailing: CircledButton(
                icon: Icons.arrow_forward_ios_outlined,
                height: 40,
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TransactionWidget(
              pageController: _pageController,
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: pages,
              ),
            )
          ],
        ),
      ),
    );
  }
}
