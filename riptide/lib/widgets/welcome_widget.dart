import 'package:flutter/material.dart';

class welcome_widget extends StatelessWidget {
  const welcome_widget(
      {super.key, required this.userName, required this.userImg});

  final String userName;
  final String userImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  userImg,
                  height: 80.0,
                  width: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
