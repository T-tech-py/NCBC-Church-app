import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Announcement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcement"),
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
          children: <Widget>[
            Text(
              '> MINISTERING WITH THE CHURCH PASTOR NEST WEEK ARE: PASTOR AND DEACONESS DAUDU \n\n'
              '> TO REPRESENT THE AT OKEOGUN NEXT WEEK IS Bro. AKANGBE\n\n'
              '> TO LEAD THE HOUR OF GLORY THROUGHOUT FEBRUARY IS Dn.OYELUDE\n\n'
              '> WE WELCOME THOSE WORSHIPPING WITH US FOR THE FIRST TIME.\n\n'
              '> OUR SERVICE STARTS AT 8am WITH HOUR OF GLORY. PLEASE, COME EARLY ALWAYS\n\n'
              '> HOME FELLOWSHIP HOLDS AT DIFFERENT CENTERS AS AGREED BY EACH CENTER. KINDLY JOIN HOME FELLOWSHIP CENTER NEAREST TO YOU.\n\n'
              '> WE NEED 1.5M FOR THE ROOFING OF THE SCHOOL EXTENSION.\n\n'
              '> BIBLE STUDY AND PRAYER SERVICE COMES UP ON WEDNESDAY AT 6pm. PLEASE, USE THE mixlr LINK IF YOU CANNOT MAKE IT CHURCH. THANKS.\n\n'
              '> OUR SCHOOL IS STILL ADMITTING STUDENTS IN CASE YOU KNOW ANYONE LOOKING FOR SCHOOL FOR THEIR WARDS. HELP US SELL THE SCHOOL.\n\n'
              '> IF YOU ARE WILLING TO JOIN THE MEMBERSHIP OF THIS CHURCH FULLY, YOU CAN SEE PASTOR DAUDU.\n\n'
              '> IF YOU WANT TO BE BAPTISED, PLEASE SEE PASTOR EMMANUEL EJERE. \n\n ',
              style: GoogleFonts.barlow(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                // color: Colors.black
              ),
            )
          ],
        ),
      ),
    );
  }
}
