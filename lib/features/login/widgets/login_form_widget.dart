import 'package:flutter/material.dart';
import '../../home/screens/home_screen.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Email
        TextField(
          decoration: InputDecoration(
            hintText: "student@flutter.dev",
            prefixIcon: const Icon(Icons.email_outlined),
            filled: true,
            fillColor: const Color(0xffF6F6F6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Password
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "••••••••••",
            prefixIcon: const Icon(Icons.lock_outline),
            filled: true,
            fillColor: const Color(0xffF6F6F6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 12),

        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Login Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),

        const SizedBox(height: 12),

        /// Create Account Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              "Create Account",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}