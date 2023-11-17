import 'package:flutter/material.dart';
import 'package:riptide/widgets/info_screen_image_widget.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoImageWidget(
            Image1: "images/beaches/beach2",
            Image2: "images/beaches/beach2",
            Image3: "images/beaches/beach2")
      ],
    );
  }
}
