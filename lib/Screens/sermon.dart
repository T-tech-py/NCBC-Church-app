import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Sermon extends StatefulWidget {
  @override
  _SermonState createState() => _SermonState();
}

class _SermonState extends State<Sermon> {
  String url;

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget loader() {
    return Center(
      child: SpinKitWave(
        color: Colors.white,
        size: 100,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Sermon'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LiveSermonCard(
              onTap: () {
                setState(() {
                  loader();
                  url =
                      'https://www.facebook.com/newcreationbaptistchurch.bogije.5/videos/858413861682001';
                  launchURL(url);
                });
              },
              icon: Icons.play_circle_filled,
              text: "Join Live\n"
                  "Sunday Service",
            ),
            SizedBox(height: 20),
            LiveSermonCard(
              onTap: () {
                setState(() {
                  url = 'https://mixlr.com/ncbc-bogije';
                  launchURL(url);
                });
              },
              icon: Icons.play_circle_filled,
              text: 'Join Live\n'
                  'Bible Study',
            ),
            SizedBox(height: 50),
            Text(
              'Note:\n'
              'Screaming Live Requires Internet Connection Please Make Sure Your Internet Is Connected',
              style: GoogleFonts.barlow(
                fontSize: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LiveSermonCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const LiveSermonCard(
      {@required this.icon, @required this.text, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 1.5,
        height: 150,
        decoration: BoxDecoration(
//          image: DecorationImage(
//              image: AssetImage('images/the blood.jpg'),
//              fit: BoxFit.cover,
//              colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken)),
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              offset: Offset(0, 5),
              spreadRadius: 10,
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                icon,
                size: 80,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(width: 18),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.barlow(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
