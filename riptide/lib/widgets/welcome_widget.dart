import 'package:flutter/material.dart';

class welcome_widget extends StatelessWidget {
  const welcome_widget(
      {super.key, required this.userName, required this.userImg});

  final String userName;
  final String userImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Great Conditions Today $userName!",
                  style: const TextStyle(fontSize: 30)),
              const Row(
                children: [
                  Text(
                    "Catch a Wave",
                    style: TextStyle(fontSize: 24),
                  ),
                  Image(
                    image: AssetImage("images/surfboard.png"),
                    height: 40,
                    width: 40,
                  ),
                  Image(
                    image: AssetImage("images/waveswell.png"),
                    height: 40,
                    width: 40,
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset(
                "images/pfp.jpg",
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
