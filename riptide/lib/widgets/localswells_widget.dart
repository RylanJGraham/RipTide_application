import 'package:flutter/material.dart';

class nearbySwell_widget extends StatefulWidget {
  const nearbySwell_widget(
      {super.key,
      required this.localImg,
      required this.localName,
      required this.localLocation});

  final String localImg;
  final String localName;
  final String localLocation;

  @override
  State<nearbySwell_widget> createState() => _nearbySwell_widgetState();
}

class _nearbySwell_widgetState extends State<nearbySwell_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 231, 181, 115),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.localImg),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.localName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromARGB(255, 65, 65, 65),
                  ),
                  Text(widget.localLocation,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 65, 65, 65))),
                ],
              ),
            ],
          ),
        ));
  }
}
