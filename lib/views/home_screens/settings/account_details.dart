import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  final String accountName;
  final String accountNumber;
  final String sortNumber;
  final String address;
  final String phoneNumber;
  const AccountDetails({
    super.key,
    required this.accountName,
    required this.accountNumber,
    required this.sortNumber,
    required this.address,
    required this.phoneNumber,
  });

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  String? address;
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: CircledButton(
            height: 55,
            icon: Icons.arrow_back_ios_new,
            onTap: (() => Navigator.pop(context)),
          ),
          title: Text(
            'Account Details',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              TransferTextField(
                readOnly: true,
                maxLength: 25,
                hintText: 'Name',
                intialValue: widget.accountName,
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              TransferTextField(
                readOnly: true,
                maxLength: 10,
                hintText: 'Account Number',
                intialValue: widget.accountName,
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              TransferTextField(
                readOnly: true,
                maxLength: 8,
                hintText: 'Sort Number',
                intialValue: widget.sortNumber,
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              TransferTextField(
                readOnly: false,
                maxLength: 50,
                hintText: 'Address',
                intialValue: widget.address,
                onChanged: (value) {
                  address = value;
                },
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              TransferTextField(
                readOnly: false,
                maxLength: 14,
                hintText: 'Phone Number',
                intialValue: widget.phoneNumber,
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 25,
              ),
              phoneNumber != null || address != null
                  ? CircledButton(
                      text: "Update details",
                      width: 100,
                      svg: SvgPicture.asset('assets/images/send.svg'),
                      onTap: () {})
                  : const SizedBox.shrink(),
            ],
          ),
        ));
  }
}
