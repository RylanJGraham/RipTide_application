import 'package:flutter/material.dart';
import 'package:riptide/widgets/featured_swell.dart';

class ContainerGrid extends StatefulWidget {
  @override
  _ContainerGridState createState() => _ContainerGridState();
}

class _ContainerGridState extends State<ContainerGrid> {
  final List<Widget> _containers = [
    const featured_wave(
      img: "images/beaches/beach2.jpg",
      location: "PUNALU BEACH",
      distance: 200,
      swellHeight: 5,
      temperature: 32,
      swellPeriod: 10,
      windSpeed: 0,
      containernumber: 2,
    ),
    const featured_wave(
      img: "images/beachfeatured.jpg",
      location: "PAUL DO MAR MEDEIRA",
      distance: 2.6,
      swellHeight: 10,
      temperature: 26,
      swellPeriod: 20,
      windSpeed: 15,
      containernumber: 1,
    ),
    const featured_wave(
      img: "images/beaches/beach3.jpg",
      location: "PRAIA DA NAZARE",
      distance: 1.2,
      swellHeight: 20,
      temperature: 26,
      swellPeriod: 20,
      windSpeed: 30,
      containernumber: 3,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _containers.insert(
        0, _containers.removeAt(1)); // Move second widget to the start
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _containers.length,
      itemBuilder: (BuildContext context, int index) {
        return _containers[index];
      },
    );
  }
}
