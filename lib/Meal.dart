import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Meal extends StatefulWidget {
  static String meal = "";

  const Meal({super.key});

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
//breakfast
  bool isPressed = false;
  Color onPressed = Colors.black;

//lunch
  bool isPressed2 = false;
  Color onPressed2 = Colors.black;

//dinner
  bool isPressed3 = false;
  Color onPressed3 = Colors.black;

  double width = 220;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(235, 217, 159, 1),
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text("What meal are you looking for?",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 28)),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed,
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                      if (isPressed) {
                        onPressed = Color.fromARGB(248, 196, 175, 67);
                        Meal.meal = "breakfast";
                      } else {
                        onPressed = Colors.black;
                        Meal.meal = "breakfast";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.breakfast_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Breakfast",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 32)),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed2,
                  onPressed: () {
                    setState(() {
                      isPressed2 = !isPressed2;
                      if (isPressed2) {
                        onPressed2 = Color.fromARGB(248, 196, 175, 67);
                        Meal.meal = "lunch";
                      } else {
                        onPressed2 = Colors.black;
                        Meal.meal = "lunch";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.lunch_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Lunch",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 32)),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed3,
                  onPressed: () {
                    setState(() {
                      isPressed3 = !isPressed3;
                      if (isPressed3) {
                        onPressed3 = Color.fromARGB(248, 196, 175, 67);
                        Meal.meal = "dinner";
                      } else {
                        onPressed3 = Colors.black;
                        Meal.meal = "dinner";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.dinner_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Dinner",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 32)),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/prefs');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Next",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredoka(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 32)),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
