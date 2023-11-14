import 'dart:math';

import 'package:flutter/material.dart';

class explore_slider extends StatefulWidget {
  const explore_slider({super.key, required this.numTags});

  final int numTags;

  @override
  State<explore_slider> createState() => _explore_sliderState();
}

class _explore_sliderState extends State<explore_slider> {
  bool hover1 = true;
  bool hover2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: hover1
                      ? const BorderSide(
                          width: 4, color: Color.fromARGB(255, 37, 135, 216))
                      : BorderSide.none)),
          child: TextButton(
            onPressed: () {
              setState(() {
                hover1 = !hover1;
                hover2 = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text(
                "RECOMMENDED",
                style: TextStyle(
                    color: hover1 ? Colors.black : Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: hover2
                      ? const BorderSide(
                          width: 4, color: Color.fromARGB(255, 37, 135, 216))
                      : BorderSide.none)),
          child: TextButton(
            onPressed: () {
              setState(() {
                hover2 = !hover2;
                hover1 = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text(
                "NEARBY",
                style: TextStyle(
                    color: hover2 ? Colors.black : Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
