import 'package:flutter/material.dart';

class CircledButton extends StatelessWidget {
  final IconData? icon;
  final double? height;
  final double? width;
  final String? text;
  final Widget? svg;
  final Function()? onTap;
  const CircledButton({
    super.key,
    this.icon,
    required this.onTap,
    this.height,
    this.width,
    this.text,
    this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: width ?? 50,
            height: height ?? 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(199, 47, 71, 67),
            ),
            child: Center(
              child: svg?? Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
        text != null
            ? Text(
                text!,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
