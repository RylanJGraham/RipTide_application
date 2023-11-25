import 'package:flutter/material.dart';

class welcome_widget extends StatelessWidget {
  const welcome_widget({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                child: Text("Good conditions today",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Text("$userName. Go Surf",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                ),
                const Image(
                  image: AssetImage("images/AppImages/icons/WaveLogo.png"),
                  height: 40,
                  width: 40,
                ),
                const Image(
                  image: AssetImage("images/AppImages/surfboard.png"),
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
