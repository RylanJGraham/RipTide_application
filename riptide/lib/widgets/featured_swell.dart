import 'package:flutter/material.dart';

class featured_wave extends StatefulWidget {
  const featured_wave(
      {super.key,
      required this.img,
      required this.swellHeight,
      required this.swellPeriod,
      required this.location,
      required this.windSpeed,
      required this.distance,
      required this.temperature});

  final String img;
  final double swellHeight;
  final double swellPeriod;
  final double windSpeed;
  final double temperature;
  final double distance;
  final String location;

  @override
  State<featured_wave> createState() => _featured_waveState();
}

class _featured_waveState extends State<featured_wave> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Distance: "),
                Text(widget.distance.toString()),
              ],
            ),
            Icon(
              Icons.sunny,
              color: Colors.white,
            )
          ],
        )

        //Padding(
        //padding: const EdgeInsets.all(20.0),
        //child: Text(
        // widget.location,
        // style: const TextStyle(
        //   color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
        //),
        //),
        );
  }
}
