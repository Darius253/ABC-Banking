import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class TransactionDetailTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  const TransactionDetailTile(
      {super.key,
      required this.subtitle,
      required this.title,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: const CircledButton(
          icon: (Icons.ac_unit),
          height: 55,
          onTap: null,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: const Color.fromARGB(255, 137, 136, 136),
              ),
        ),
        trailing: Text(
          trailing,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
