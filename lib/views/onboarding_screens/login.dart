import 'package:abc_banking/views/widgets/exports.dart';
import 'package:abc_banking/views/widgets/loader.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
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
                      'Welcome\n Back!',
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
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      hintText: 'Enter Email',
                      prefixIcon: Icons.mail,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFields(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      hintText: "Enter Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: <Widget>[
                        Expanded(child: SizedBox()),
                        Text(
                          'Forgotten Password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 138, 111, 201),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    AuthenticationButton(
                        formKey: _formKey,
                        text: 'Sign In',
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
                              builder: (context) => const SignUpScreen(),
                            ))),
                        firstText: 'Do you want to join our team? ',
                        secondText: 'Open an Account here!')
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
