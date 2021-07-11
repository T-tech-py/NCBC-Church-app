import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ncbc_app/Screens/menupage.dart';
//import 'package:overlay_support/overlay_support.dart';

class LandingPage extends StatefulWidget {
  // void _notification() {
  //   showSimpleNotification(
  //       Text(
  //         "WELCOME TO NCBC",
  //         style: GoogleFonts.barlow(
  //             color: CupertinoColors.white,
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold),
  //         textAlign: TextAlign.center,
  //       ),
  //       background: Colors.green);
  // }

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  double size = 300;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      upperBound: 300.0,
      lowerBound: 250.0,
    );
    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 300);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.addListener(() {
      setState(() {});
      print(controller.status);
    });
    redirector();
  }

  void redirector() {
    Timer(Duration(seconds: 8), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MenuPage();
      }));
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
                  width: controller.value,
                  height: controller.value,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
