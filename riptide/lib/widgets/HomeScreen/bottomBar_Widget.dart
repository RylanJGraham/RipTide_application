import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  bool home_active = true;
  bool favorites_active = false;
  bool search_active = false;
  bool profile_active = false;

  Icon Favorite1 = const Icon(
    Icons.favorite_border_outlined,
    color: Colors.grey,
    size: 40,
  );

  Icon Favorite2 = const Icon(
    Icons.favorite,
    color: Color.fromARGB(255, 0, 204, 153),
    size: 40,
  );

  Icon Search1 = const Icon(
    Icons.search_outlined,
    color: Colors.grey,
    size: 40,
  );
  Icon Search2 = const Icon(
    Icons.search,
    color: Color.fromARGB(255, 0, 204, 153),
    size: 40,
  );

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(10),
      shadowColor: Colors.grey,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: home_active
                  ? Color.fromARGB(255, 0, 204, 153)
                  : Color.fromARGB(255, 104, 104, 104),
            ),
            iconSize: 40,
            onPressed: () {
              setState(() {
                home_active = !home_active;
                favorites_active = false;
                search_active = false;
                profile_active = false;
              });
            },
          ),
          IconButton(
            icon: favorites_active ? Favorite2 : Favorite1,
            onPressed: () {
              setState(() {
                favorites_active = !favorites_active;
                home_active = false;
                search_active = false;
                profile_active = false;
              });
              // Add your logic here
            },
          ),
          IconButton(
            icon: search_active ? Search2 : Search1,
            onPressed: () {
              setState(() {
                search_active = !search_active;
                home_active = false;
                favorites_active = false;
                profile_active = false;
              });
              // Add your logic here
            },
          ),
          IconButton(
            alignment: Alignment.center,
            icon: const Icon(
              Icons.person_2_outlined,
            ),
            iconSize: 40,
            onPressed: () {
              profile_active = !profile_active;
              home_active = false;
              favorites_active = false;
              search_active = false;
            },
          ),
        ],
      ),
    );
  }
}
