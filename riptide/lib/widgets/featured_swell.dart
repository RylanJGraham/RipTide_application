import 'package:flutter/material.dart';

class featured_wave extends StatefulWidget {
  const featured_wave(
      {super.key,
      required this.featuredImg,
      required this.featuredInfo,
      required this.featuredLocation});

  final String featuredImg;
  final String featuredInfo;
  final String featuredLocation;

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
          image: AssetImage(widget.featuredImg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.featuredInfo,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                Text(widget.featuredLocation,
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
