import 'package:flutter/material.dart';
import 'package:riptide/widgets/localswells_widget.dart';

class localswellsindex extends StatefulWidget {
  const localswellsindex({super.key});

  @override
  State<localswellsindex> createState() => _localswellsindexState();
}

class _localswellsindexState extends State<localswellsindex> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        nearbySwell_widget(
            localImg: "images/featuredimage.jpeg",
            localName: "Barceloneta",
            localLocation: "Barcelona, Spain"),
        nearbySwell_widget(
            localImg: "images/pfp.jpg",
            localName: "Porto del Sol",
            localLocation: "Lisbon, Portugal")
      ],
    );
  }
}
