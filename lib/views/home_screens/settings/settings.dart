import 'package:abc_banking/views/home_screens/settings/account_details.dart';
import 'package:abc_banking/views/home_screens/settings/view_card.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Settings',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
        ),
      ),
      body: ListView(children: [
        ListTile(
          title: Text(
            'View Card',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
          trailing: CircledButton(
            icon: Icons.arrow_forward_ios_outlined,
            height: 40,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  barrierDismissible: true,
                  opaque: false,
                  pageBuilder: (_, anim1, anim2) => const CardDetails(
                    accountName: '',
                    cardNumber: '',
                    cvv: '',
                    expirydate: '',
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        ListTile(
          title: Text(
            'Account Details',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
          trailing: CircledButton(
            icon: Icons.arrow_forward_ios_outlined,
            height: 40,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  barrierDismissible: true,
                  opaque: false,
                  pageBuilder: (_, anim1, anim2) => const AccountDetails(
                    accountName: '',
                    accountNumber: '',
                    sortNumber: '',
                    address: '',
                    phoneNumber: '',
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        ListTile(
          title: Text(
            'Facing Issue?',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          ),
          subtitle: Text(
            'Report problems, suggestions and bugs',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: const Color.fromARGB(255, 145, 143, 143),
                ),
          ),
          trailing: CircledButton(
            icon: Icons.mail_outline_rounded,
            height: 40,
            onTap: () {},
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ListTile(
          title: Text(
            'Log Out',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: const Color.fromARGB(255, 248, 3, 3),
                ),
          ),
          trailing: CircledButton(
            icon: Icons.logout_outlined,
            height: 40,
            onTap: () {},
          ),
        ),
      ]),
    );
  }
}
