import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter By Example"), backgroundColor: Colors.blue),
      body: const Center(
        child: Icon(Icons.flutter_dash, size: 200, color: Colors.blue),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(Icons.star, color: Colors.white),
      ),
    );
  }
}