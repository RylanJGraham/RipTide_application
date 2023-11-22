import 'package:flutter/material.dart';

class Favorite_Minimal extends StatefulWidget {
  const Favorite_Minimal({
    super.key,
    required this.img,
    required this.location,
  });

  final String img;
  final String location;

  @override
  State<Favorite_Minimal> createState() => _Favorite_MinimalState();
}

class _Favorite_MinimalState extends State<Favorite_Minimal> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, "/infoScreen");
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.location,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
