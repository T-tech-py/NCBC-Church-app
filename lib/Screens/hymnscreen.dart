import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/widgets.dart';

class HymnDisplayScreen extends StatelessWidget {
  final Map hymn;
  const HymnDisplayScreen({
    @required this.hymn,
  });

  @override
  Widget build(BuildContext context) {
    int hymnNumber = hymn['number'];
    String hymnVerse1 = hymn["Body"]['verse'][0];
    String hymnVerse2 = hymn["Body"]['verse'][1];
    String hymnVerse3 = hymn['Body']['verse'][2];
    String hymnVerse4 = hymn['Body']['verse'][3];
    String hymnVerse5 = hymn['Body']['verse'][4];
    String hymnTitle = hymn["Title"];
    String hymnChorus = hymn['chorus'];
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              hymnNumber.toString(),
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(width: 5),
            Text(hymnTitle, style: TextStyle(fontSize: 12))
          ],
        ),
        // centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnVerse1,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnChorus,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnVerse2,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnVerse3,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnVerse4,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15, left: 20, top: 10, bottom: 8.0),
            child: Text(
              hymnVerse5,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
