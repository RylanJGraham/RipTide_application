import 'package:flutter/material.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/Widgets/Explore_Tab.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/Widgets/bottomAppBar_Widget.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/Widgets/header_widget.dart';

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
          ),
          ExploreWidget(),
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
