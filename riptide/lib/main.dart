import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:riptide/Screens/HomeScreen/home_screen.dart';
//import 'package:riptide/Screens/LoginScreens/signIn_screen.dart';
//import 'package:riptide/Screens/ProfileScreens/profile_screen.dart';
//Enable both includes for Profile & Login Screens

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Enable Windows/Chrome Scrolling
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      routes: {
        "/home": (context) => const HomeScreen(),
        //"/login": (context) => SignInSignUpPage(),--Login/SignUp
        //'/profile': (context) => const ProfilePage(),--Profile View(Progress)
      },
      home: const HomeScreen(), //SignInSignUpPage(), --StartUp Login
    );
  }
}
