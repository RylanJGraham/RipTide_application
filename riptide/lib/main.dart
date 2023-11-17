import 'package:flutter/material.dart';
import 'package:riptide/widgets/bottomBar_Widget.dart';
import 'package:riptide/widgets/explore_header.dart';
import 'package:riptide/widgets/featured_scroll_widget.dart';
import 'package:riptide/widgets/home_screen.dart';
import 'package:riptide/widgets/info_screen.dart';
import 'package:riptide/widgets/welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomeScreen(),
        "/infoScreen": (context) => InfoScreen(),
      },
      home: HomeScreen(),
    );
  }
}
