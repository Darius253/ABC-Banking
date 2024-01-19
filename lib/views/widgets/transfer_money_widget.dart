import 'package:flutter/material.dart';

class TransferTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final int maxLength;
  final String? intialValue;
  final bool readOnly;
  final GlobalKey<FormState>? formKey;
  const TransferTextField({
    super.key,
    this.controller,
    required this.hintText,
    required this.onChanged,
    required this.keyboardType,
    required this.maxLength,
    this.intialValue,
    required this.readOnly,
    this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          readOnly: readOnly,
          initialValue: intialValue,
          maxLength: maxLength,
          keyboardType: keyboardType,
          onFieldSubmitted: onChanged,
          style: const TextStyle(color: Colors.white),
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This Field Cannot be Empty!';
            } else {
              return null;
            }
          },
          onChanged: onChanged,
          decoration: InputDecoration(
            counterText: "",
            hintText: hintText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 127, 126, 126)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 138, 111, 201),
              ),
            ),
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
      ],
    );
  }
}

class ConfirmDetails extends StatelessWidget {
  final String title;
  final String details;
  const ConfirmDetails({
    super.key,
    required this.details,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: const Color.fromARGB(255, 118, 118, 118),
                )),
        Text(details,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 0, 0, 0),
                )),
        const Divider(
          color: Color.fromARGB(127, 101, 101, 101),
        )
      ],
    );
  }
}
