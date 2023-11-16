import 'package:flutter/material.dart';
import 'package:riptide/widgets/bottomBar_Widget.dart';
import 'package:riptide/widgets/explore_header.dart';
import 'package:riptide/widgets/featured_scroll_widget.dart';
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
        //"/ExpandedInfo": (context) => ExpandedInfo(),
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const welcome_widget(
              userName: "Rylan",
              userImg: "images/pfp.jpg",
            ),
            const explore_slider(),
            Expanded(child: ContainerGrid()),
          ],
        ),
        bottomNavigationBar: const BottomBarWidget(),
      ),
    );
  }
}
