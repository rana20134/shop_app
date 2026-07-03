import 'package:flutter/material.dart';
import '../widgets/login_header_widget.dart';
import '../widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            children: const [
              SizedBox(height: 70),
              LoginHeaderWidget(),
              SizedBox(height: 50),
              LoginFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}