import 'package:flutter/material.dart';
import '../../login/screens/login_screen.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Name
        TextField(
          decoration: InputDecoration(
            hintText: "Full Name",
            prefixIcon: const Icon(Icons.person_outline),
            filled: true,
            fillColor: const Color(0xffF6F6F6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.brown, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Email
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: const Icon(Icons.email_outlined),
            filled: true,
            fillColor: const Color(0xffF6F6F6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.brown, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Password
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: const Icon(Icons.lock_outline),
            filled: true,
            fillColor: const Color(0xffF6F6F6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.brown, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 30),

        /// Sign Up Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),

        const SizedBox(height: 15),

        /// Back to Login
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text(
            "Already have an account? Login",
            style: TextStyle(color: Colors.brown),
          ),
        ),
      ],
    );
  }
}