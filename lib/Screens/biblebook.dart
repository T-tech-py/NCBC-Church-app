import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bible.dart';
import 'package:ncbc_app/contans/const.dart';

const url = "https://ajith-holy-bible.p.rapidapi.com/GetBooks";

class BibleBook extends StatefulWidget {
  final book;
  final bibleVersion;

  const BibleBook({@required this.book, @required this.bibleVersion});

  @override
  _BibleBookState createState() => _BibleBookState();
}

class _BibleBookState extends State<BibleBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bibleVersion + " Holy Bible"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Text(
              widget.book,
              style: GoogleFonts.play(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
