import 'package:flutter/material.dart';

class InfoImageWidget extends StatefulWidget {
  const InfoImageWidget(
      {super.key,
      required this.Image1,
      required this.Image2,
      required this.Image3});

  final String Image1;
  final String Image2;
  final String Image3;

  @override
  State<InfoImageWidget> createState() => _InfoImageWidgetState();
}

class _InfoImageWidgetState extends State<InfoImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.Image1),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const FittedBox(
                                  child: Text(
                                    "DISTANCE:  ",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 173, 173, 173),
                                        fontSize: 16),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(widget.distance.toString(),
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 173, 173, 173),
                                        fontSize: 16,
                                      )),
                                ),
                                const Text(
                                  "KM",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(widget.temperature.toString(),
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 173, 173, 173),
                                        fontSize: 16)),
                                const Icon(
                                  Icons.thermostat_rounded,
                                  color: Color.fromARGB(255, 173, 173, 173),
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 20, 40),
                        child: Text(
                          widget.location,
                          style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(113, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "HEIGHT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 82, 82, 82)),
                                ),
                                Row(
                                  children: [
                                    for (double i = 0; i < 4; i++)
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(80),
                                        child: Image.asset(
                                          "images/icons/WaveLogo.png",
                                          height: 30.0,
                                          width: 30.0,
                                          color: widget.swellHeight - (i * 5) >=
                                                  5
                                              ? Color.fromARGB(255, 0, 204, 153)
                                              : Color.fromARGB(255, 87, 87, 87),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(113, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "WIND",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 82, 82, 82)),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 4; i++)
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(80),
                                        child: Image.asset(
                                          "images/icons/WindLogo.png",
                                          height: 30.0,
                                          width: 30.0,
                                          color: widget.windSpeed - (i * 5) >= 5
                                              ? Color.fromARGB(255, 0, 204, 153)
                                              : const Color.fromARGB(
                                                  255, 85, 85, 85),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}