class Beach {
  final String img;
  final String location;
  final double distance;
  final double swellHeight;
  final double temperature;
  final double swellPeriod;
  final double windSpeed;
  final int containerNumber;

  Beach({
    required this.img,
    required this.location,
    required this.distance,
    required this.swellHeight,
    required this.temperature,
    required this.swellPeriod,
    required this.windSpeed,
    required this.containerNumber,
  });
}

List<Beach> recommended = [
  Beach(
    img: "images/AppImages/beaches/beach2.jpg",
    location: "PUNALU BEACH",
    distance: 8000,
    swellHeight: 5,
    temperature: 32,
    swellPeriod: 10,
    windSpeed: 0,
    containerNumber: 2,
  ),
  Beach(
    img: "images/AppImages/beachfeatured.jpg",
    location: "PAUL DO MAR MEDEIRA",
    distance: 1000,
    swellHeight: 10,
    temperature: 26,
    swellPeriod: 20,
    windSpeed: 15,
    containerNumber: 1,
  ),
  Beach(
    img: "images/AppImages/beaches/beach3.jpg",
    location: "PRAIA DA NAZARE",
    distance: 800,
    swellHeight: 20,
    temperature: 26,
    swellPeriod: 20,
    windSpeed: 30,
    containerNumber: 3,
  ),
  // Add more beach data as needed
];

List<Beach> nearby = [
  Beach(
    img: "images/AppImages/beaches/rio.jpg",
    location: "RIO DE JANIERO",
    distance: 1.2,
    swellHeight: 20,
    temperature: 26,
    swellPeriod: 20,
    windSpeed: 30,
    containerNumber: 3,
  ),
  Beach(
    img: "images/AppImages/beaches/armacao.png",
    location: "ARMACAO DOS BUZIOS",
    distance: 2.6,
    swellHeight: 10,
    temperature: 26,
    swellPeriod: 20,
    windSpeed: 15,
    containerNumber: 1,
  ),
  Beach(
    img: "images/AppImages/beaches/maceio.jpg",
    location: "PRAIA MACEIO",
    distance: 5,
    swellHeight: 5,
    temperature: 32,
    swellPeriod: 10,
    windSpeed: 0,
    containerNumber: 2,
  ),
  // Add more beach data as needed
];
