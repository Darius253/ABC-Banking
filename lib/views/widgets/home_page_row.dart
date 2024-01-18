import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class HomePageRow extends StatelessWidget {
  const HomePageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircledButton(
            icon: Icons.add,
            width: 90,
            text: 'Add',
            onTap: (() => addAccount(context)),
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
    );
  }
}
