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
              'MONDAY, FEBRUARY 22----1 PETER 4:7-11 \n'
              'TUESDAY, FEBRUARY 23---- ROMANS 12:9-19\n'
              'WEDNESDAY, FEBRUARY 24----ACTS 16:35-40\n'
              'THURSDAY, FEBRUARY 25----1 TIMOTHY 5:9-10; 3:2\n'
              'FRIDAY, FEBRUARY 26----1 CORINTHIANS 1:18-25\n'
              'SATURDAY, FEBRUARY 27----1 CORINTHIANS 2:1-5\n'
              'SUNDAY, FEBRUARY 28---- ACTS 16:11-15, 40; 1 Cor. 1:26-30',
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
              '1. PLEAD THE BLOOD OF JESUS OVER ALL THAT PERTAINS TO YOU.\n'
              '\n'
              '2. EVERY CHALLENGE IN MY FAMILY AND MY LIFE EXPIRE IN THE NAME OF JESUS.\n'
              '\n'
              '3. ALL CHALLENGE PLAGUING THE NATION, EXPIRE IN THE NAME OF JESUS\n'
              '\n'
              '4. ALL CHALLENGE PLAGUING THE WORLD, EXPIRE IN THE NAME OF JESUS',
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
