import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  void _validar() {
    if (_userController.text == "admin" && _passController.text == "1234") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Falha no login!'), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _userController,
          decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Email'),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _passController,
          obscureText: true,
          decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Password'),
        ),
        TextButton(onPressed: () {}, child: const Text("Forgot Password")),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: _validar,
            child: const Text("Login", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}