import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> createCustomer(
      String fullName,
      String email,
      String accountNumber,
      String sortNumber,
      String address,
      String phoneNumber) async {
    try {
      await _firestore.collection("Customers").add({
        "Fullname": fullName,
        "Email": email,
        "Account Number": accountNumber,
        "Sort Number": sortNumber,
        "Address": address,
        "Phone Number": phoneNumber,
        "uid": FirebaseAuth.instance.currentUser!.uid,
      });

      return "Account Created";
    } catch (e) {
      return "Error creating account";
    }
  }

  Future<String> createAccount(
    String fullname,
    String accountNumber,
    String type,
    String sortNumber,
    DateTime date,
    double balance,
  ) async {
    try {
      await _firestore.collection("Accounts").add({
        "Account Name": fullname,
        "Account Number": accountNumber,
        "Account Type": type,
        "Date Created": date,
        "Balance": balance,
        "Sort Number": sortNumber,
        "uid": FirebaseAuth.instance.currentUser!.uid,
      });

      return "Account Created";
    } catch (e) {
      return "Error creating account";
    }
  }
}
