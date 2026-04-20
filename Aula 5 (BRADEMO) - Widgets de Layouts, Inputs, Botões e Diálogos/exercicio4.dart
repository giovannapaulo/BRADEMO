import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormPage(),
    );
  }
}

class FormPage extends StatelessWidget {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Form Exercicio"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            /// 📞 PHONE
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone",
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: dobController,
                    decoration: InputDecoration(
                      labelText: "Dob",
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String phone = phoneController.text;
                String dob = dobController.text;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Name: $name\nPhone: $phone\nDob: $dob",
                    ),
                  ),
                );
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}