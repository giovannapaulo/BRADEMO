import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  bool isFabOpen = false;

  final List<Widget> pages = [
    Center(child: Text("TAB: 1", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 2", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 3", style: TextStyle(fontSize: 24))),
    Center(child: Text("TAB: 4", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomAppBar with FAB")),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: pages[currentIndex],
          ),
          if (isFabOpen)
            Positioned(
              bottom: 110,
              child: Column(
                children: [
                  miniFab(Icons.call),
                  SizedBox(height: 20),
                  miniFab(Icons.email),
                  SizedBox(height: 20),
                  miniFab(Icons.message),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isFabOpen = !isFabOpen;
          });
        },
        child: Icon(isFabOpen ? Icons.close : Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconButton(Icons.menu, 0),
                iconButton(Icons.layers, 1),
              ],
            ),
            Row(
              children: [
                iconButton(Icons.dashboard, 2),
                iconButton(Icons.notifications, 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget iconButton(IconData icon, int index) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }

  Widget miniFab(IconData icon) {
    return FloatingActionButton(
      mini: true,
      onPressed: () {},
      child: Icon(icon),
    );
  }
}