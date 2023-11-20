import 'package:flutter/material.dart';
import 'package:riptide/widgets/HomeScreen/bottomBar_Widget.dart';
import 'package:riptide/widgets/HomeScreen/explore_header.dart';
import 'package:riptide/widgets/HomeScreen/swell_scroll_widget.dart';
import 'package:riptide/widgets/HomeScreen/home_screen.dart';
import 'package:riptide/widgets/LoginScreens/login_page.dart';
import 'package:riptide/widgets/LoginScreens/register_page.dart';
import 'package:riptide/widgets/ProfileScreens/profile_screen.dart';
import 'package:riptide/widgets/welcome_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login": (context) => LoginWidget(),
        "/home": (context) => HomeScreen(),
        '/register': (context) => RegisterPage(),
        '/profile': (context) => ProfilePage(),
        //"/infoScreen": (context) => InfoScreen(),
      },
      home: LoginWidget(),
    );
  }
}
