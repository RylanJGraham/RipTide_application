import 'package:flutter/material.dart';
import 'package:riptide/widgets/HomeScreen/bottomBar_Widget.dart';
import 'package:riptide/widgets/HomeScreen/explore_header.dart';
import 'package:riptide/widgets/HomeScreen/swell_scroll_widget.dart';
import 'package:riptide/widgets/welcome_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const welcome_widget(
            userName: "Rylan",
            userImg: "images/pfp.jpg",
          ),
          const explore_slider(),
          Expanded(child: ContainerGrid()),
        ],
      ),
      bottomNavigationBar: BottomBarWidget(
          favorites_active: false,
          home_active: true,
          profile_active: false,
          search_active: false),
    );
  }
}
