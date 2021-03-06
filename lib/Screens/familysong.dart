import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilySong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAMILY SONG"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(15),
//        decoration: BoxDecoration(
//            image: DecorationImage(
//          colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken),
//          image: AssetImage('images/bankpics2.jpg'),
//          fit: BoxFit.cover,
//        )),
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '🎵'
                  ' WE ARE THE NEW CREATION, CREATED AND WONDERFULLY MADE\n'
                  'ONE BIG FAMILY, UNITED WITH THE LOVE OF GOD\n'
                  'TO FULFIL THE WILL OF GOD ON THE EARTH\n'
                  'AND OTHERS TO AN ETERNAL KINGDOM.\n'
                  'JOIN THIS HAPPIEST FAMILY ON EARTH\n'
                  'AS WE LIFT UP THE BANNER OF CHRIST\n'
                  'NEW CREATION FAMILY WE ARE MORE THAN CONQUEROR\n'
                  'NEW CREATION FAMILY,\n'
                  'CREATING CHRIST NATURE IN MEN.'
                  ' 🎵',
                  style: GoogleFonts.barlow(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
