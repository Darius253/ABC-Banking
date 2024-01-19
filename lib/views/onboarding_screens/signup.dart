import 'package:abc_banking/controllers/customer_controller.dart';
import 'package:abc_banking/views/widgets/exports.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _houseAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? fullName;
  String? houseAddress;
  String? password;
  String? phoneNumber;
  String? accountType;
  String? accountNumber;
  String? sortNumber;
  bool isloading = false;
  final CustomerController _customerController = CustomerController();

  final List<String> accountTypes = [
    "Current Account",
    "International Account",
    "Fixed Account",
    "Savings Account"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Text(
                      'Create an\n account',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextFields(
                      onChanged: (value) {
                        email = value;
                      },
                      controller: _emailController,
                      hintText: 'Enter Email',
                      prefixIcon: Icons.mail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFields(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        fullName = value;
                      },
                      controller: _fullnameController,
                      hintText: "Enter your full name",
                      prefixIcon: Icons.person,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFields(
                      keyboardType: TextInputType.streetAddress,
                      onChanged: (value) {
                        houseAddress = value;
                      },
                      controller: _houseAddressController,
                      hintText: "Enter your house address",
                      prefixIcon: Icons.house,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFields(
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      controller: _passwordController,
                      hintText: "Enter Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFields(
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        setState(() {
                          phoneNumber = value;
                        });
                      },
                      controller: _phoneNumberController,
                      hintText: "Enter your Phone Number",
                      prefixIcon: Icons.phone,
                    ),
                    const SizedBox(height: 25),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Expanded(
                              child: Text('Choose Account Type',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255))),
                            ),
                          ],
                        ),
                        items: accountTypes
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 255, 254, 254))),
                                ))
                            .toList(),
                        value: accountType,
                        onChanged: (value) {
                          setState(() {
                            accountType = value.toString();
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: MediaQuery.of(context).size.height * 0.075,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 138, 111, 201),
                            ),
                            color: const Color.fromARGB(255, 25, 24, 24),
                          ),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                          ),
                          iconEnabledColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 234, 236, 240),
                            ),
                            color: const Color.fromARGB(255, 25, 24, 24),
                          ),
                          elevation: 0,
                          offset: const Offset(0, 25),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(8),
                            thickness: MaterialStateProperty.all<double>(6),
                            thumbVisibility:
                                MaterialStateProperty.all<bool>(true),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              text: 'By clicking on the ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 95, 95, 95)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Register ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 138, 111, 201))),
                                TextSpan(
                                    text: 'button you agree to our ',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 95, 95, 95))),
                                TextSpan(
                                    text: 'Terms and Conditions ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 138, 111, 201))),
                                TextSpan(
                                    text: 'and our ',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 95, 95, 95))),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 138, 111, 201))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    AuthenticationButton(
                      formKey: _formKey,
                      text: 'Register',
                      onTap: () {
                        setState(() {
                          isloading = true;
                        });

                        if (_formKey.currentState!.validate() &&
                            accountType != null) {
                          isloading == true
                              ? loading(context, false)
                              : const SizedBox.shrink();
                          setState(() {
                            accountNumber = generateAccountNumber();
                            sortNumber = generateSortNumber();
                          });

                          _customerController.setUpAccount(
                            fullName!,
                            email!,
                            accountNumber!,
                            sortNumber!,
                            houseAddress!,
                            phoneNumber!,
                            accountType!,
                            DateTime.now(),
                            password!,
                            context,
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                    TextspanNavigator(
                        onTap: (() => Navigator.push(
                            context,
                            PageRouteBuilder(
                              barrierDismissible: true,
                              opaque: false,
                              pageBuilder: (_, anim1, anim2) =>
                                  const LoginScreen(),
                            ))),
                        firstText: 'Already part of the team? ',
                        secondText: 'Sign In here!')
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
