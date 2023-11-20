import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
        backgroundColor: Color.fromARGB(255, 0, 204, 153),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/pfp.jpg'),
              // You can replace the AssetImage with NetworkImage for online images
            ),
          ),
          SizedBox(height: 20.0),
          ListTile(
            title: Text(
              'Name',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'John Doe',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          ListTile(
            title: Text(
              'Email',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'johndoe@example.com',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 204, 153),
              ),
              onPressed: () {
                // Implement edit functionality
                // Navigate to edit profile page or show a dialog for editing
              },
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
