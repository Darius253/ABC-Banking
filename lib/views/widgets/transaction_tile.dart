import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 70,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(222, 24, 33, 32),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: ListTile(
            leading: const CircledButton(
              icon: (Icons.ac_unit_outlined),
              height: 55,
              onTap: null,
            ),
            title: Text(
              'Fees Payment',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
            ),
            subtitle: Text(
              'Payment to Kingston',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: const Color.fromARGB(255, 137, 136, 136),
                  ),
            ),
            trailing: Text(
              '£14900.00',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
