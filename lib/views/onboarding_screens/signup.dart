import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/loader.dart';
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
                                    text: 'Privacy',
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
                          if (_formKey.currentState!.validate()) {
                            loading(context);

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          }
                        }),
                    const SizedBox(height: 30),
                    TextspanNavigator(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
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
