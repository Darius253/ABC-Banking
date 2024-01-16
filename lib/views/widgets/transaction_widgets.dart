import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final bool isSelected;
  final Function()? onTap;
  const TransactionWidget({super.key, required this.isSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 150,
            height: 50,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: isSelected == true
                  ? const Color(0xFFd9d9d9)
                  : const Color.fromARGB(255, 111, 217, 200),
            ),
            child: Center(
              child: Text(
                'In',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 150,
            height: 50,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: isSelected == false
                  ? const Color(0xFFd9d9d9)
                  : const Color.fromARGB(255, 111, 217, 200),
            ),
            child: Center(
              child: Text(
                'Out',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
