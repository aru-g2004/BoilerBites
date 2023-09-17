import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Preferences extends StatefulWidget {
  static String pref = "";

  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  bool isPressed = false;
  Color onPressed = Colors.black;
  bool isPressed2 = false;
  Color onPressed2 = Colors.black;
  bool isPressed3 = false;
  Color onPressed3 = Colors.black;
  bool isPressed4 = false;
  Color onPressed4 = Colors.black;
  bool isPressed5 = false;
  Color onPressed5 = Colors.black;
  bool isPressed6 = false;
  Color onPressed6 = Colors.black;
  bool isPressed7 = false;
  Color onPressed7 = Colors.black;

  double width = 280;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(235, 217, 159, 1),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text("What type of meal do you need?",
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
                        Preferences.pref = "Vegetarian";
                      } else {
                        onPressed = Colors.black;
                        Preferences.pref = "Vegetarian";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Vegetarian",
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
            height: 10,
          ),

          // Vegan Button
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
                        Preferences.pref = "Vegan";
                      } else {
                        onPressed2 = Colors.black;
                        Preferences.pref = "Vegan";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Vegan",
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
            height: 10,
          ),

          // Protein-Heavy Button
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
                        Preferences.pref = "Protein-Heavy";
                      } else {
                        onPressed3 = Colors.black;
                        Preferences.pref = "Protein-Heavy";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Protein-Heavy",
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
            height: 10,
          ),
          // Carb-Heavy Button
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed4,
                  onPressed: () {
                    setState(() {
                      isPressed4 = !isPressed4;
                      if (isPressed4) {
                        onPressed4 = Color.fromARGB(248, 196, 175, 67);
                        Preferences.pref = "Carb-Heavy";
                      } else {
                        onPressed4 = Colors.black;
                        Preferences.pref = "Carb-Heavy";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Carb-Heavy",
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
            height: 10,
          ),
          // Dairy-Free Button
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed5,
                  onPressed: () {
                    setState(() {
                      isPressed5 = !isPressed5;
                      if (isPressed5) {
                        onPressed5 = Color.fromARGB(248, 196, 175, 67);
                        Preferences.pref = "Dairy-Free";
                      } else {
                        onPressed5 = Colors.black;
                        Preferences.pref = "Dairy-Free";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Dairy-Free",
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
            height: 10,
          ),
          // Gluten-Free Button
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed6,
                  onPressed: () {
                    setState(() {
                      isPressed6 = !isPressed6;
                      if (isPressed6) {
                        onPressed6 = Color.fromARGB(248, 196, 175, 67);
                        Preferences.pref = "Gluten-Free";
                      } else {
                        onPressed6 = Colors.black;
                        Preferences.pref = "Gluten-Free";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Gluten-Free",
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
            height: 10,
          ),
          // Keto Button
          SizedBox(
            width: width,
            child: Center(
              child: MaterialButton(
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: onPressed7,
                  onPressed: () {
                    setState(() {
                      isPressed7 = !isPressed7;
                      if (isPressed7) {
                        onPressed7 = Color.fromARGB(248, 196, 175, 67);
                        Preferences.pref = "Keto";
                      } else {
                        onPressed7 = Colors.black;
                        Preferences.pref = "Keto";
                      }
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_dining,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Keto",
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
            height: 20,
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
                    Navigator.pushNamed(context, '/ranking');
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
