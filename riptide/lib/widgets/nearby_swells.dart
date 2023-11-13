import 'package:flutter/material.dart';

class nearby_swell_widgetState extends StatefulWidget {
  const nearby_swell_widgetState({super.key});

  @override
  State<nearby_swell_widgetState> createState() =>
      _nearby_swell_widgetStateState();
}

class _nearby_swell_widgetStateState extends State<nearby_swell_widgetState> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Hi",
          style: TextStyle(fontSize: 60),
        ),
        //Image(
        //image: AssetImage(userImage),
        //height: 400,
        //width: 300,
        //fit: BoxFit.cover,
        //)
      ],
    );
  }
}
