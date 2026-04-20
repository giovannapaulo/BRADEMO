import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return MobileLayout();
    } else {
      return TabletLayout();
    }
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Responsive Layouts"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          Text(
            "Cheetah Coding",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("BUTTON 1")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text("BUTTON 2")),
            ],
          ),

          SizedBox(height: 20),

          Expanded(
            child: ListView(
              children: menuItems(),
            ),
          )
        ],
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Responsive Layouts"),
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: [
          /// LEFT
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cheetah Coding",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 20),

                ElevatedButton(onPressed: () {}, child: Text("BUTTON 1")),
                SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: Text("BUTTON 2")),
              ],
            ),
          ),

          VerticalDivider(color: Colors.white),

          Expanded(
            flex: 3,
            child: ListView(
              children: menuItems(),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> menuItems() {
  final items = ["Dart", "JavaScript", "PHP", "C++"];

  return items.map((item) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }).toList();
}