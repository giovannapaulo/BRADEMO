import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConstrainedExamples(),
    );
  }
}

class ConstrainedExamples extends StatelessWidget {
  const ConstrainedExamples({super.key});

  final int example = 2; 

  @override
  Widget build(BuildContext context) {
    if (example == 1) {
      return Scaffold(
        appBar: AppBar(title: const Text("Exemplo 1")),
        body: Container(
          color: Colors.red,
        ),
      );
    }

    if (example == 2) {
      return Scaffold(
        appBar: AppBar(title: const Text("Exemplo 2")),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
      );
    }

    if (example == 3) {
      return Scaffold(
        appBar: AppBar(title: const Text("Exemplo 3")),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 100,
              minHeight: 100,
              maxWidth: 150,
              maxHeight: 150,
            ),
            child: Container(
              color: Colors.green,
              width: 10,
              height: 10,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo 4")),
      body: Center(
        child: UnconstrainedBox(
          child: Container(
            color: Colors.orange,
            width: 400,
            height: 50,
          ),
        ),
      ),
    );
  }
}