import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_signup/presentation/registration/registration.dart';
import 'package:sample_signup/widgets/custom_button.dart';
import 'package:sample_signup/widgets/custom_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formkey,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff1BFFFF), Color(0xff1c3c58)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: GoogleFonts.abrilFatface(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Enter your login details',
                style: GoogleFonts.akatab(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "Enter your email address",
                obscureText: false,
                textController: _controller,
                label: "Email",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              CustomTextField(
                hintText: "Enter your password",
                obscureText: true,
                textController: _passController,
                label: "Password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(buttonText: "Login", onTap: validateLogin),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: "Need an account? "),
                  TextSpan(
                      text: "Register here",
                      style: const TextStyle(
                          color: Color(0xff1BFFFF),
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Registration(),
                          ));
                        }),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  void validateLogin() {
    if (_formkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successfully')),
      );
    }

  }
}
