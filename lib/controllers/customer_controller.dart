import 'dart:async';
import 'dart:math';
import 'package:abc_banking/services/authentication_services.dart';
import 'package:flutter/material.dart';

class CustomerController {
  final Authentication _authentication = Authentication();

  Future<String?> setUpAccount(
    String fullName,
    String email,
    String accountNumber,
    String sortNumber,
    String address,
    String phone,
    String accountType,
    DateTime date,
    String password,
    BuildContext context,
  ) async {
    try {
      await _authentication.signupCustomer(
        fullName,
        email,
        accountNumber,
        sortNumber,
        address,
        phone,
        accountType,
        date,
        password,
        context,
      );
      return "Success";
    } catch (error) {
      return error.toString();
    }
  }

  Future<String?> signIn(
      String email, String password, BuildContext context) async {
    try {
      await _authentication.signIn(email, password, context);
      return 'Success';
    } catch (error) {
      return error.toString();
    }
  }
}

// generate Account numbers
String generateAccountNumber() {
  Random random = Random();
  List<int> accountNumberDigits =
      List.generate(14, (index) => random.nextInt(10));
  return accountNumberDigits.join();
}

//Generate SortNumbers
String generateSortNumber() {
  Random random = Random();
  List<int> digits = List.generate(8, (index) => random.nextInt(10));

  while (digits[0] == 0) {
    digits[0] = random.nextInt(10);
  }

  digits.sort();

  List<String> formattedDigits = [];
  for (int i = 0; i < digits.length; i += 2) {
    formattedDigits.add(digits.sublist(i, i + 2).join(''));
  }

  String sortNumber = formattedDigits.join('-');
  return sortNumber;
}
