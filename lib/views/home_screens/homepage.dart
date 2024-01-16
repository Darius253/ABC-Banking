import 'package:abc_banking/views/widgets/exports.dart';
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
              const Balance(),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircledButton(
                      icon: Icons.add,
                      width: 90,
                      text: 'Add',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircledButton(
                      icon: Icons.trending_up_outlined,
                      width: 90,
                      text: 'Send',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircledButton(
                      icon: Icons.trending_down_outlined,
                      width: 90,
                      text: 'Received',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircledButton(
                      icon: Icons.payments,
                      width: 90,
                      text: 'Pay Bill',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircledButton(
                      icon: Icons.grid_3x3_sharp,
                      width: 90,
                      text: 'More',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
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
              const TransactionTile(),
              const TransactionTile(),
              const TransactionTile(),
            ],
          ),
        ),
      ),
    );
  }
}
