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
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Statistics',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Balance(),
            const SizedBox(
              height: 25,
            ),
            TransactionWidget(
              isSelected: isSelected,
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
                _pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: PageView(
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
