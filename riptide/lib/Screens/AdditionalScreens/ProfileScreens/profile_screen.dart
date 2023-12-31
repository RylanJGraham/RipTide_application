import 'package:flutter/material.dart';
import 'package:riptide/Screens/AdditionalScreens/ProfileScreens/FavoriteScreens/favorite_minimal.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double itemWidth = 200.0; // Adjust as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green], // Adjust gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/AppImages/pfp.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Rylan Graham',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '@rylanjgraham',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildStatColumn('Followers', '10K'),
                    _buildStatColumn('Following', '100'),
                    _buildStatColumn('Surfed', '10'),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Favorite Spots",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Favorite_Minimal(
                          img: "images/AppImages/beaches/beach2.jpg",
                          location: "Barcelona"),
                      Favorite_Minimal(
                          img: "images/AppImages/beaches/beach2.jpg",
                          location: "Barcelona"),
                      Favorite_Minimal(
                          img: "images/AppImages/beaches/beach2.jpg",
                          location: "Barcelona"),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String value) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
