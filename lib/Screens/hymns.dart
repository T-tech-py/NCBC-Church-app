import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:convert/convert.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/ncbc_app/lib/bible&hymns/Hymnal.dart';

class Hymns extends StatefulWidget {
  @override
  _HymnsState createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  @override
  Widget build(BuildContext context) {
    void getData() async {
      https.Response response = await https.get('https://www.google.com');

      if (response.statusCode == 200) {
        print(response.body);
      } else {
        print(response.statusCode);
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("HYMNS"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
        child: hymnal(),
      ),
    );
  }
}
