import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  final _accountNumberController = TextEditingController();
  final _accountName = TextEditingController();
  final _sortNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                MainColors.black,
                Color.fromARGB(221, 47, 71, 67),
              ]),
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: SizedBox()),
              Center(
                child: Text(
                  'Add Account',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                ),
              ),
              const Expanded(child: SizedBox()),
              CircledButton(
                icon: Icons.close,
                onTap: (() => Navigator.pop(context)),
              ),
            ],
          ),
          TransferTextField(
              readOnly: false,
              maxLength: 14,
              hintText: 'Account Number',
              controller: _accountNumberController,
              onChanged: (value) {},
              keyboardType: TextInputType.number),
          const SizedBox(
            height: 15,
          ),
          TransferTextField(
              readOnly: false,
              maxLength: 25,
              hintText: 'Account Name',
              controller: _accountName,
              onChanged: (value) {},
              keyboardType: TextInputType.number),
          const SizedBox(
            height: 15,
          ),
          TransferTextField(
            readOnly: false,
              maxLength: 8,
              hintText: 'Sort Number',
              controller: _sortNumber,
              onChanged: (value) {},
              keyboardType: TextInputType.number),
          const SizedBox(
            height: 20,
          ),
          CircledButton(
            icon: Icons.add,
            onTap: () {},
            height: 70,
            width: 70,
          )
        ]),
      ),
    );
  }
}
