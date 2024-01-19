// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously

import 'dart:async';

import 'package:abc_banking/services/firebase_services.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  final FirestoreService _firestoreService = FirestoreService();

  Future<String?> signupCustomer(
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
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _firestoreService.createCustomer(
        fullName,
        email,
        accountNumber,
        sortNumber,
        address,
        phone,
      );
      await _firestoreService.createAccount(
        fullName,
        accountNumber,
        accountType,
        sortNumber,
        date,
        10.0,
      );

      _authenticating(context);

      return 'Success';
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'weak-password') {
        showSnackBar(context, 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar(context, 'An account already exists for that email.');
      } else {
        showSnackBar(context, 'Sign up failed: ${e.message}');
      }
      return e.code;
    } catch (e) {
      Navigator.pop(context);
      showSnackBar(context, 'Sorry, Something went wrong. Try again later!');
      return e.toString();
    }
  }

  Future<String?> signIn(
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      _authenticating(context);
      showSnackBar(context, 'Welcome Back!');
      return 'Success';
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'invalid-email') {
        showSnackBar(context, 'Wrong Email Address');
      } else if (e.code == 'wrong-password') {
        showSnackBar(context, 'Wrong Password');
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        showSnackBar(context, 'Wrong Login Credentials');
      }
      return e.code;
    } catch (e) {
      Navigator.pop(context);
      showSnackBar(context, 'Sorry, Something went wrong. Try again later!');
      return e.toString();
    }
  }

  void showSnackBar(BuildContext context, String message) {
    if (context != null) {
      final snackBar = SnackBar(
        content: Center(
          child: Text(
            message,
          ),
        ),
        backgroundColor: MainColors.purple,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(50),
        duration: const Duration(milliseconds: 10000),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void _authenticating(BuildContext context) {
    if (context != null) {
      Timer(const Duration(milliseconds: 300), () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            barrierDismissible: true,
            opaque: false,
            pageBuilder: (_, anim1, anim2) => const Home(),
          ),
        );
      });

      success(context);
    }
  }
}
