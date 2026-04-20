import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridExample(),
    );
  }
}

class GridExample extends StatelessWidget {

  final List<Map<String, String>> items = [
    {
      "title": "Exemplo 1",
      "image": "https://images.unsplash.com/photo-1506744038136-46273834b3fb"
    },
    {
      "title": "Exemplo 2",
      "image": "https://images.unsplash.com/photo-1524492412937-b28074a5d7da"
    },
    {
      "title": "Exemplo 3",
      "image": "https://images.unsplash.com/photo-1519681393784-d120267933ba"
    },
    {
      "title": "Exemplo 4",
      "image": "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee"
    },
    {
      "title": "Exemplo 5",
      "image": "https://images.unsplash.com/photo-1500534314209-a25ddb2bd429"
    },
    {
      "title": "Exemplo 6",
      "image": "https://images.unsplash.com/photo-1501785888041-af3ef285b470"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Exercicio")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      item["image"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      item["title"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}