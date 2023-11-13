import 'package:flutter/material.dart';

class explore_slider extends StatefulWidget {
  const explore_slider({super.key, required this.numTags});

  final int numTags;

  @override
  State<explore_slider> createState() => _explore_sliderState();
}

class _explore_sliderState extends State<explore_slider> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < widget.numTags; i++)
          TextButton(
            onPressed: () {
              setState(() {
                selected = i;
              });
            },
            child: Text("Info",
                style: TextStyle(
                    color: selected == i ? Colors.black : Colors.grey)),
          )
      ],
    );
  }
}

class Button {}
