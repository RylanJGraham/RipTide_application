import 'package:flutter/material.dart';

class nearby_swell_widgetState extends StatefulWidget {
  const nearby_swell_widgetState({super.key});

  @override
  State<nearby_swell_widgetState> createState() =>
      _nearby_swell_widgetStateState();
}

class _nearby_swell_widgetStateState extends State<nearby_swell_widgetState> {
  String savedlocation = "Barcelona";
  String userImage = "waveswell.jpg";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          savedlocation,
          style: const TextStyle(fontSize: 60),
        ),
        Image(
          image: AssetImage(userImage),
          height: 400,
          width: 300,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
