import 'package:flutter/material.dart';
import 'package:riptide/widgets/explore_header.dart';
import 'package:riptide/widgets/explore_slider.dart';
import 'package:riptide/widgets/featured_swell.dart';
import 'package:riptide/widgets/localswells_index.dart';
import 'package:riptide/widgets/welcome_widget.dart';

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
            welcome_widget(
              userName: "Rylan",
              userImg: "images/pfp.jpg",
            ),
            explore_slider(numTags: 3),
            featured_wave(
              img: "images/featuredimage.jpeg",
              location: "PAUL DO MAR MEDEIRA",
              distance: 2.6,
              swellHeight: 4,
              temperature: 26,
              swellPeriod: 20,
              windSpeed: 15,
            ),
            explore_spots(),
            localswellsindex(),
          ],
        ),
      ),
    );
  }
}
