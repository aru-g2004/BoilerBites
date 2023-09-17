import 'package:boilerbites/Meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Prefs.dart';

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  // Replace these numbers with the actual number of meals each dining court offers
  int fordMeals = 10;
  int wileyMeals = 4;
  int windsorMeals = 15;
  int earhartMeals = 8;
  int prefIndex = 6;

  List<List<dynamic>> Data = [];

  Future<void> _loadTXT() async {
    if (Preferences.pref.contains("Vegetarian")) {
      prefIndex = 6;
    } else if (Preferences.pref.contains("Vegan")) {
      prefIndex = 7;
    } else if (Preferences.pref.contains("Protein-Heavy")) {
      prefIndex = 17;
    } else if (Preferences.pref.contains("Carb-Heavy")) {
      prefIndex = 16;
    } else if (Preferences.pref.contains("Dairy-Free")) {
      prefIndex = 5;
    } else if (Preferences.pref.contains("Gluten-Free")) {
      prefIndex = 4;
    } else if (Preferences.pref.contains("Keto")) {
      prefIndex = 18;
    } else {
      prefIndex = 900;
    }
    String mealString =
        await rootBundle.loadString('assets/' + Meal.meal + 'txt');
    List<String> rows = mealString.split('\n');

    for (String item in rows) {
      List<dynamic> foodItem = item.split('\t');
      Data.add(foodItem);

      List<Widget> Ford = [];
      List<Widget> Wiley = [];
      List<Widget> Windsor = [];
      List<Widget> Earhart = [];
      List<Widget> Foods = [];

      print(Data);
      print(Data.length);

      for (int i = 0; i < Data.length - 1; i++) {
        for (int b = 0; b < Data[i].length - 1; b++) {
          String current = Data[i][0].toString();
          print(current);
          if (b == prefIndex) {
            if (b == 1 && Data[i][1].toString().contains("Ford")) {
              fordMeals++;
              Ford.add(Text(current));
            } else if (b == 1 && Data[i][1].toString().contains("Windsor")) {
              windsorMeals++;
              Windsor.add(Text(current));
            } else if (b == 1 && Data[i][1].toString().contains("Earhart")) {
              earhartMeals++;
              Earhart.add(Text(current));
            } else if (b == 1 && Data[i][1].toString().contains("Wiley")) {
              wileyMeals++;
              Wiley.add(Text(current));
            } else {}
          }
        }
      }
    }
  }

  Widget buildDiningOptionButton(BuildContext bc, int index, String option) {
    return Center(
      child: SizedBox(
        width: 285,
        child: Center(
          child: MaterialButton(
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.black,
            onPressed: () {
              setState(() {
                Navigator.pushNamed(bc, "/bites");
              });
            },
            child: Row(
              children: [
                Text(
                  (index + 1).toString() + ". " + option,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Create a list of dining courts and their respective meal counts
    List<Map<String, int>> diningCourts = [
      {"Ford Dining": fordMeals},
      {"Wiley Dining": wileyMeals},
      {"Windsor Dining": windsorMeals},
      {"Earhart Dining": earhartMeals},
    ];

    // Sort the dining courts by meal count in descending order
    diningCourts.sort((a, b) => b.values.first.compareTo(a.values.first));

    return Container(
      color: Color.fromRGBO(207, 185, 145, 1),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Your Top Locations!",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 32,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // Display the sorted dining courts
            ListView.builder(
              shrinkWrap: true,
              itemCount: diningCourts.length,
              itemBuilder: (context, index) {
                final diningCourt = diningCourts[index];
                final diningCourtName = diningCourt.keys.first;
                final mealCount = diningCourt.values.first;

                return SizedBox(
                  height: 80,
                  child: buildDiningOptionButton(
                    context,
                    index,
                    "$diningCourtName",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
