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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi $userName!",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40)),
                const Row(
                  children: [
                    Text(
                      "Catch a Wave",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 110, 110, 110)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Image(
                        image: AssetImage("images/surfboard.png"),
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.asset(
                userImg,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
