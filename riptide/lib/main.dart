import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/home_screen.dart';
//import 'package:riptide/Screens/AdditionalScreens/LoginScreens/signIn_screen.dart';
//import 'package:riptide/Screens/AdditionalScreens/ProfileScreens/profile_screen.dart';
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
        //Task 1 Screen
        "/home": (context) => const HomeScreen(),
        //Login & Profile Screens
        //"/login": (context) => SignInSignUpPage(), //--Login/SignUp
        //'/profile': (context) => const ProfilePage(), //--Profile View(Progress)
      },
      home: const HomeScreen(), //SignInSignUpPage(), //--StartUp Login
    );
  }
}
