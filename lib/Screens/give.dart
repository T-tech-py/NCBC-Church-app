import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Give extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Give'),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'YOU CAN PAY YOUR TITHE AND OFFERINGS THROUGH THE CHURCH FIRST BANK ACCOUNT:\n \nACCOUNT NAME:   NEW CREATION BAPTIST CHURCH\n'
                  'ACCOUNT NUMBER:   2008775177\n\n '
                  'PROJECT ACCOUNT\n\n'
                  'ECOBANK - NEW CREATION BAPTIST CHURCH\n'
                  'ACCOUNT NUMBER:  2231038567',
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
