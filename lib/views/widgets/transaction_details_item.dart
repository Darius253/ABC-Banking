import 'package:flutter/material.dart';

class TransactionDetailsItem extends StatelessWidget {
  final String header;
  final String details;
  const TransactionDetailsItem({
    super.key,
    required this.details,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            header,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: const Color.fromARGB(255, 100, 100, 100),
                ),
          ),
          subtitle: Text(
            details,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
        ),
      ],
    );
  }
}
