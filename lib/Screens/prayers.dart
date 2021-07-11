import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayers'),
        centerTitle: true,
      ),
      body: Container(
        //color: Colors.white,
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
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'DAILY ENCOUNTER WITH GOD',
                style: GoogleFonts.barlow(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'MONDAY, March 8----Hebrews 11:23-31 \n'
              'TUESDAY, March 9---- Luke 18:35-42 \n'
              'WEDNESDAY, March 10----Joshua 5:8-12\n'
              'THURSDAY, March 11----Joshua 6:6-14\n'
              'FRIDAY, March 12----Joshua 2:15-14\n'
              'SATURDAY, March 13----Joshua 6:22-25\n'
              'SUNDAY, March 14---- Joshua 5:13-6:5',
              style: GoogleFonts.barlow(
                fontSize: 20, //color: Colors.black
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                'PRAYER POINTS',
                style: GoogleFonts.barlow(
                  fontSize: 25,
                  //color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. THANK GOD FOR THE PRIVILEGE OF ANOTHER WEEK.\n'
              '\n'
              '2. PRAY FOR THE EMPOWERMENT OF GOD TO DISLODGE EVERY PLAN WHO IS NOT FROM GOD.\n'
              '\n'
              '3. PRAY FOR AN ENCOUNTER DURING THE REVIVAL PROGRAMME\n'
              '\n'
              '4. PRAY FOR FRESH OIL ON THE MAN OF GOD.',
              style: GoogleFonts.barlow(
                fontSize: 20, //color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
