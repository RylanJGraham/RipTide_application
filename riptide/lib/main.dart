import 'package:flutter/material.dart';
import 'package:riptide/widgets/featured_swell.dart';
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
          //"/ExpandedInfo": (context) => ExpandedInfo(),
        },
        home: Scaffold(
          backgroundColor: Colors.white,
          body: const Column(
            children: [
              welcome_widget(
                userName: "Rylan",
                userImg: "images/pfp.jpg",
              ),
              //BeachPage(),
              featured_wave(
                img: "images/beachfeatured.jpg",
                location: "PAUL DO MAR MEDEIRA",
                distance: 2.6,
                swellHeight: 10,
                temperature: 26,
                swellPeriod: 20,
                windSpeed: 15,
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            padding: const EdgeInsets.all(10),
            shadowColor: Colors.grey,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 0, 204, 153),
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Add your logic here
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.search_rounded,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Add your logic here
                  },
                ),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Add your logic here
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
