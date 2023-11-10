import 'package:flutter/material.dart';
import 'package:riptide/widgets/nearby_swells.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text("Rylan"),
            nearby_swell_widgetState(),
          ],
        ),
      ),
    );
  }
}
