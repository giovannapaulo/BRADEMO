import 'package:flutter/material.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.flutter_dash, size: 100, color: Colors.blue), // No lugar da logo.png
              const SizedBox(height: 30),
              const LoginForm(),
              const SizedBox(height: 20),
              const Text("New User? Create Account"),
            ],
          ),
        ),
      ),
    );
  }
}