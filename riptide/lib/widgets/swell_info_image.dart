import 'package:flutter/material.dart';

class BeachPage extends StatefulWidget {
  @override
  _BeachPageState createState() => _BeachPageState();
}

class _BeachPageState extends State<BeachPage> {
  final List<String> imagePaths = [
    'images/beachfeatured.jpg',
    'assets/featuredimage.jpeg',
    // Add more beach image paths
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beach Info'),
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Beach Statistics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Stats: Beach specific data',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  // Add more information if needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
