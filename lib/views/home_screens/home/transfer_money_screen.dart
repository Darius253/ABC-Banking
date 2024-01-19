import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class TransferMoneyScreen extends StatefulWidget {
  final String? accountNumber;
  final String? payeeName;
  final String? sortNumber;
  final bool? readOnly;

  const TransferMoneyScreen(
      {Key? key,
      this.accountNumber,
      this.payeeName,
      this.sortNumber,
      this.readOnly})
      : super(key: key);

  @override
  State<TransferMoneyScreen> createState() => _TransferMoneyScreenState();
}

class _TransferMoneyScreenState extends State<TransferMoneyScreen> {
  final formKey = GlobalKey<FormState>();

  final _referenceController = TextEditingController();
  final _amountController = TextEditingController();

  String amount='';
  String payeeName='';
  String accountNumber='';
  String sortNumber='';
  String reference = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: CircledButton(
          height: 55,
          icon: Icons.arrow_back_ios_new,
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'Make a Payment',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 30),
                TransferTextField(
                  readOnly: false,
                  maxLength: 7,
                  keyboardType: TextInputType.number,
                  hintText: 'Amount',
                  controller: _amountController,
                  onChanged: (value) {
                    setState(() {
                      amount = value;
                    });
                  },
                ),
                const SizedBox(height: 15),
                TransferTextField(
                  readOnly: widget.readOnly ?? false,
                  intialValue: widget.payeeName,
                  maxLength: 25,
                  keyboardType: TextInputType.name,
                  hintText: 'Payee Name',
                  // controller: _payeeNameController,
                  onChanged: (value) {
                    setState(() {
                      payeeName = value;
                    });
                  },
                ),
                const SizedBox(height: 15),
                TransferTextField(
                  readOnly: widget.readOnly ?? false,
                  intialValue: widget.accountNumber,
                  maxLength: 14,
                  keyboardType: TextInputType.number,
                  hintText: 'Account Number',
                  // controller: _accountNumberController,
                  onChanged: (value) {
                    setState(() {
                      accountNumber = value;
                    });
                  },
                ),
                const SizedBox(height: 15),
                TransferTextField(
                  readOnly: widget.readOnly ?? false,
                  intialValue: widget.sortNumber,
                  maxLength: 8,
                  keyboardType: TextInputType.number,
                  hintText: 'Sort Number',
                  // controller: _sortNumberController,
                  onChanged: (value) {
                    setState(() {
                      sortNumber = insertHyphens(value);
                    });
                  },
                ),
                const SizedBox(height: 15),
                TransferTextField(
                  readOnly: false,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  hintText: 'Reference',
                  controller: _referenceController,
                  onChanged: (value) {
                    setState(() {
                      reference = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                CircledButton(
                  text: 'Confirm',
                  width: 70,
                  height: 70,
                  icon: Icons.payment,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      confirmDetails();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void confirmDetails() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Confirm Details'),
            actions: [
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: Text(
                    'Edit',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    loading(context, true);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: MainColors.black)),
                    child: Text(
                      'Proceed',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: MainColors.teal,
                          ),
                    ),
                  ))
            ],
            content: SizedBox(
              height: 400,
              width: 800,
              child: Column(
                children: [
                  ConfirmDetails(
                    title: 'Amount',
                    details: '£$amount',
                  ),
                  ConfirmDetails(
                    title: 'Payee Name',
                    details: widget.payeeName ?? payeeName,
                  ),
                  ConfirmDetails(
                    title: 'Account Number',
                    details: widget.accountNumber ?? accountNumber,
                  ),
                  ConfirmDetails(
                    title: 'Sort Number',
                    details: widget.sortNumber ?? sortNumber,
                  ),
                  ConfirmDetails(
                    title: 'Reference',
                    details: reference,
                  ),
                ],
              ),
            ),
          );
        });
  }

  String insertHyphens(String input) {
    if (input.length != 8) {
      return input;
    }

    List<String> chunks = [];
    for (int i = 0; i < input.length; i += 2) {
      chunks.add(input.substring(i, i + 2));
    }

    String result = chunks.join('-');

    return result;
  }
}
