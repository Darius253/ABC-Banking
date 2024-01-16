import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  const TextFields({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    required this.onChanged,
    required this.keyboardType,
    this.suffixIcon,
  });

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 7),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 25, 24, 24),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        onFieldSubmitted: widget.onChanged,
        style: const TextStyle(color: Colors.white),
        controller: widget.controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Invalid Field';
          } else {
            return null;
          }
        },
        obscureText: visible,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.suffixIcon != null
              ? InkWell(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: visible == false
                      ? Icon(widget.suffixIcon)
                      : const Icon(Icons.visibility_off),
                )
              : const SizedBox.shrink(),
          hintStyle: const TextStyle(color: Color.fromARGB(255, 127, 126, 126)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 138, 111, 201),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 253, 1, 1),
            ),
          ),
        ),
      ),
    );
  }
}
