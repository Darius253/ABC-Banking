import 'package:flutter/material.dart';

class TextspanNavigator extends StatelessWidget {
  final Function()? onTap;
  final String firstText;
  final String secondText;
  const TextspanNavigator(
      {super.key,
      required this.onTap,
      required this.firstText,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: firstText,
            style: const TextStyle(color: Colors.white),
            children: <TextSpan>[
              TextSpan(
                  text: secondText,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 138, 111, 201))),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthenticationButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String text;
  final Function()? onTap;
  const AuthenticationButton({
    super.key,
    required this.formKey,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const Expanded(child: SizedBox()),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 70,
            decoration: const ShapeDecoration(
              shadows: [
                BoxShadow(
                  color: Color.fromARGB(255, 138, 111, 201),
                  blurRadius: 30,
                )
              ],
              shape: CircleBorder(),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 138, 111, 201),
                ],
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
