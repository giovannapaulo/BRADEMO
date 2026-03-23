import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.purple),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.purple,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercicio 2"),
        backgroundColor: Color(0xFFB39DDB),
      ),

      body: const SizedBox(),

     
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButton(Icons.call, "CALL"),
            buildButton(Icons.near_me, "ROUTE"),
            buildButton(Icons.share, "SHARE"),
          ],
        ),
      ),
    );
  }
}