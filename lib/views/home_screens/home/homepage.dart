import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/home_page_row.dart';
import 'package:flutter/material.dart';

class HoomePage extends StatelessWidget {
  const HoomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(188, 29, 44, 41),
              Color.fromARGB(255, 0, 0, 0),
            ],
            stops: [
              0.005,
              0.27
            ]),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ListView(
            children: [
              const Appbar(),
              const SizedBox(
                height: 25,
              ),
              const Balance(
                text: 'Total Balance',
                amount: '50,000.00',
              ),
              const SizedBox(
                height: 20,
              ),
              const BankCard(
                firstColor: Color.fromARGB(255, 114, 255, 227),
                secondColor: Color.fromARGB(187, 0, 0, 0),
                thirdColor: Color.fromARGB(187, 137, 38, 58),
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'ABC Banking Group',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '1234',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Valid Thru',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '12/24',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HomePageRow(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Transactions',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TransactionTile(
                accountName: 'Kingston University',
                amount: '£15900.00',
              ),
              const TransactionTile(
                accountName: 'Kingston University',
                amount: '£15900.00',
              ),
              const TransactionTile(
                accountName: 'Kingston University',
                amount: '£15900.00',
              ),
              const TransactionTile(
                accountName: 'Kingston University',
                amount: '£15900.00',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
