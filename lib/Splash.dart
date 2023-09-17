import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  List<String> jokes = [
    "Why did the banana go to the hairdresser?",
    "Because it had split ends!",
    "Where did Spaghetti go to dance?",
    "The meat-ball!",
    "Why do you make a mouse smile?",
    "Say 'cheese!'",
    "Why don't eggs tell each other jokes?",
    "Cuz' they crack each other up!"
  ];

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushNamed(context, '/meal');
    });

    return Container(
      color: Color.fromRGBO(207, 185, 145, 1),
      child: Column(children: [
        SizedBox(
          height: 200,
        ),
        Image.asset(
          'assets/images/boilerbite_image.png',
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text("Boiler Bites",
              style: GoogleFonts.fredoka(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 40)),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 150,
          width: 300,
          child: CarouselSlider(
            items: jokes
                .map((item) => Text(item,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 20)))
                .toList(),
            options: CarouselOptions(
                autoPlay: true, autoPlayInterval: Duration(seconds: 3)),
          ),
        ),
      ]),
    );
  }
}
