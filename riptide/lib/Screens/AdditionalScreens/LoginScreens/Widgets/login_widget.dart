import 'dart:ui';

import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                fillColor: Colors.white,
                hoverColor: Colors.black,
                filled: true,
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  backgroundColor: Color.fromARGB(255, 231, 137, 70),
                  textStyle: TextStyle(color: Colors.black, fontSize: 18)),
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
