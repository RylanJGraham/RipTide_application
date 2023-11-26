import 'package:flutter/material.dart';
import 'package:riptide/data/beaches_data.dart';

// ignore: camel_case_types
class featured_wave extends StatefulWidget {
  const featured_wave({Key? key, required this.beach}) : super(key: key);
  final Beach beach;

  @override
  State<featured_wave> createState() => _featured_waveState();
}

class _featured_waveState extends State<featured_wave> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: Container(
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.beach.img),
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
                                      color: Color.fromARGB(255, 202, 202, 202),
                                      fontSize: 16),
                                ),
                              ),
                              FittedBox(
                                child: Text(widget.beach.distance.toString(),
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 202, 202, 202),
                                      fontSize: 16,
                                    )),
                              ),
                              const Text(
                                "KM",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 202, 202, 202),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(widget.beach.temperature.toString(),
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
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
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.beach.location,
                          style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "HEIGHT",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 138, 138, 138)),
                            ),
                            Row(
                              children: [
                                for (double i = 0; i < 4; i++)
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Image.asset(
                                      "images/AppImages/icons/WaveLogo.png",
                                      height: 30.0,
                                      width: 30.0,
                                      color:
                                          widget.beach.swellHeight - (i * 5) >=
                                                  5
                                              ? const Color.fromARGB(
                                                  255, 255, 255, 255)
                                              : const Color.fromARGB(
                                                  255, 87, 87, 87),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "WIND",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 138, 138, 138)),
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < 4; i++)
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Image.asset(
                                      "images/AppImages/icons/WindLogo.png",
                                      height: 30.0,
                                      width: 30.0,
                                      color:
                                          widget.beach.windSpeed - (i * 5) >= 5
                                              ? const Color.fromARGB(
                                                  255, 255, 255, 255)
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
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
