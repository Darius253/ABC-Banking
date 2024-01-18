import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          CircledButton(
            icon: Icons.ac_unit_outlined,
            onTap: () {},
          ),
          const Expanded(child: SizedBox.shrink()),
          CircledButton(
            width: 50,
            icon: Icons.credit_card_rounded,
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(199, 47, 71, 67),
            ),
            child: const Icon(
              Icons.grid_view_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
