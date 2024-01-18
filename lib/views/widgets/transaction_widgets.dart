import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  final PageController pageController;

  const TransactionWidget({
    super.key,
    required this.pageController,
  });

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = true;
            });
            widget.pageController.animateToPage(0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear);
          },
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
                  ? const Color.fromARGB(255, 111, 217, 200)
                  : const Color(0xFFd9d9d9),
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
          onTap: () {
            setState(() {
              isSelected = false;
            });
            widget.pageController.animateToPage(1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear);
          },
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
                    ? const Color.fromARGB(255, 111, 217, 200)
                    : const Color(0xFFd9d9d9)),
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
