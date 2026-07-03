import 'package:flutter/material.dart';
import '../widgets/signup_header_widget.dart';
import '../widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: const Column(
            children: [
              SizedBox(height: 50),
              SignupHeader(),
              SizedBox(height: 40),
              SignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}