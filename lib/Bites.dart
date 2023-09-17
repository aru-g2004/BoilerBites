import 'package:flutter/material.dart';
import 'package:excel/excel.dart';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Bites extends StatefulWidget {
  const Bites({Key? key}) : super(key: key);

  @override
  State<Bites> createState() => _BitesState();
}

class _BitesState extends State<Bites> {
  List<List<dynamic>> lunchData = [];

  @override
  void initState() {
    super.initState();
    _loadLunchTXT();
  }

  Future<void> _loadLunchTXT() async {
    String lunchString = await rootBundle.loadString('assets/lunch.txt');
    List<String> rows = lunchString.split('\n');

    for (String item in rows) {
      List<dynamic> foodItem = item.split('\t');
      lunchData.add(foodItem);
    }
    setState(() {}); // Trigger a rebuild of the widget tree
  }

  // Widget TextBuilder() {
  //   List<Widget> text = [];
  //   for (int i = 0; i < lunchData.length; i++) {
  //     for (int b = 0; b < lunchData[i].length; b++) {
  //       text.add(Text(
  //         lunchData[i][b].toString(),
  //         style: GoogleFonts.fredoka(
  //           color: Colors.black,
  //           decoration: TextDecoration.none,
  //           fontSize: 10,
  //         ),
  //       ));
  //     }
  //   }
  //   return Column(children: text);
  // }

  Widget VegOptions() {
    List<Widget> text = [];
    for (int i = 0; i < lunchData.length; i++) {
      String isPro = lunchData[i][6].toString();
      String diningCourt = lunchData[i][1].toString();
      if (isPro.contains("TRUE") && diningCourt.contains("Windsor")) {
        text.add(MaterialButton(
            color: Colors.black,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(lunchData[i][0],
                style: GoogleFonts.fredoka(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                ))));
        text.add(SizedBox(
          height: 20,
        ));
      }
    }
    return Column(children: text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(207, 185, 145, 1),
        child: ListView(children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              "Your Boiler Bites!",
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
          VegOptions(),
        ]));
  }
}

ProtienOptions() {
  return Text("Helllo");
}
