import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomBarWidget extends StatefulWidget {
  BottomBarWidget(
      {super.key,
      required this.favorites_active,
      required this.home_active,
      required this.profile_active,
      required this.search_active});

  // ignore: non_constant_identifier_names
  bool home_active;
  bool favorites_active;
  bool search_active;
  bool profile_active;

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  Icon Favorite1 = const Icon(
    Icons.favorite_border_outlined,
    color: Colors.grey,
    size: 40,
  );

  Icon Favorite2 = const Icon(
    Icons.favorite_border_outlined,
    color: Color.fromARGB(255, 23, 113, 142),
    size: 40,
  );

  Icon Search1 = const Icon(
    Icons.search_outlined,
    color: Colors.grey,
    size: 40,
  );
  Icon Search2 = const Icon(
    Icons.search_outlined,
    color: Color.fromARGB(255, 23, 113, 142),
    size: 40,
  );

  Icon Profile1 = const Icon(
    Icons.person_outline,
    color: Colors.grey,
    size: 40,
  );
  Icon Profile2 = const Icon(
    Icons.verified_user_outlined,
    color: Color.fromARGB(255, 23, 113, 142),
    size: 40,
  );

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      shadowColor: const Color.fromARGB(0, 255, 255, 255),
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: widget.home_active
                  ? const Color.fromARGB(255, 23, 113, 142)
                  : const Color.fromARGB(255, 104, 104, 104),
            ),
            iconSize: 40,
            onPressed: () {
              if (widget.home_active = false) {
                Navigator.pushNamed(context, "/home");
              }
              setState(() {
                widget.home_active = !widget.home_active;
                widget.favorites_active = false;
                widget.search_active = false;
                widget.profile_active = false;
              });
            },
          ),
          IconButton(
            icon: widget.favorites_active ? Favorite2 : Favorite1,
            onPressed: () {
              setState(() {
                widget.favorites_active = !widget.favorites_active;
                widget.home_active = false;
                widget.search_active = false;
                widget.profile_active = false;
              });
              // Add your logic here
            },
          ),
          IconButton(
            icon: widget.search_active ? Search2 : Search1,
            onPressed: () {
              setState(() {
                widget.search_active = !widget.search_active;
                widget.home_active = false;
                widget.favorites_active = false;
                widget.profile_active = false;
              });
              // Add your logic here
            },
          ),
          IconButton(
            alignment: Alignment.center,
            icon: widget.profile_active ? Profile2 : Profile1,
            iconSize: 40,
            onPressed: () {
              //Navigator.pushNamed(context, "/profile");
              widget.profile_active = !widget.profile_active;
              widget.home_active = false;
              widget.favorites_active = false;
              widget.search_active = false;
            },
          ),
        ],
      ),
    );
  }
}
