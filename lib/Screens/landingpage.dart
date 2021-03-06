import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ncbc_app/Screens/menupage.dart';
import 'package:overlay_support/overlay_support.dart';

class LandingPage extends StatelessWidget {
  void _notification() {
    showSimpleNotification(
        Text(
          "WELCOME TO NCBC",
          style: GoogleFonts.barlow(
              color: CupertinoColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        background: Colors.green);
  }

  double size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/ncbc.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MenuPage();
                      }));
                      // _notification();
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Get Started"),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
