import 'package:flutter/material.dart';
import 'package:riptide/data/beaches_data.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/Widgets/featuredwave_display.dart';

class RecommendedViewer extends StatefulWidget {
  const RecommendedViewer({super.key});

  @override
  _RecommendedViewerState createState() => _RecommendedViewerState();
}

class _RecommendedViewerState extends State<RecommendedViewer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recommended.length,
      itemBuilder: (BuildContext context, int index) {
        return featured_wave(beach: recommended[index]);
      },
    );
  }
}

class NearbyViewer extends StatefulWidget {
  const NearbyViewer({super.key});

  @override
  _NearbyViewerState createState() => _NearbyViewerState();
}

class _NearbyViewerState extends State<NearbyViewer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: nearby.length,
      itemBuilder: (BuildContext context, int index) {
        return featured_wave(beach: nearby[index]);
      },
    );
  }
}
