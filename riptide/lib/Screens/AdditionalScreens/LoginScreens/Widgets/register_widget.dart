import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  fillColor: Colors.white,
                  hoverColor: Colors.black,
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  fillColor: Colors.white,
                  hoverColor: Colors.black,
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  fillColor: Colors.white,
                  hoverColor: Colors.black,
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  fillColor: Colors.white,
                  hoverColor: Colors.black,
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  backgroundColor: Color.fromARGB(255, 37, 135, 216),
                  textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
