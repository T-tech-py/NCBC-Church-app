import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ncbc_app/contans/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'biblebook.dart';
import 'package:ncbc_app/Screens/errorscreen.dart';
import 'package:bible/bible.dart' as bible;

class Bible extends StatefulWidget {
  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> {
  String selectedBible = "Genesis";
  String bibleSpeck = bibleType[0];
  String bibleChapter = '1';
  String bibleVerse = '1';
  String decodedBible;

  void getBible() async {
    var passage = await bible.queryPassage('$selectedBible $bibleChapter ',
        providerName: 'getbible', version: '$bibleSpeck');
    //var passage = await bible.queryPassage("$selectedBible $bibleChapter");
    print(passage.passage);
    var text = passage.verses;
    List nowWorking = [];
    text.forEach((key, value) {
      nowWorking.add(key + "    " + value);
      //nowWorking.add(" ");
    });
    decodedBible = nowWorking.toString();

    print(passage.extra);

//    http.Response response =
//        await http.get('https://getbible.net/json?passage=Genesis3');
//    if (response.statusCode == 200) {
//      var decodedData = jsonDecode(response.body);
//      print(decodedData);
//    } else {
//      print(response.statusCode);
//    }
  }

  DropdownButton<String> bibleNameDropdown() {
    List<DropdownMenuItem<String>> bibles = [];
    for (String bib in bibleBook) {
      var newItem = DropdownMenuItem(
        child: Text(bib),
        value: bib,
      );
      bibles.add(newItem);
    }
    return DropdownButton<String>(
        dropdownColor: Colors.deepPurple,
        value: selectedBible,
        items: bibles,
        onChanged: (value) {
          setState(() {
            selectedBible = value;
            getBible();
          });
        });
  }

  DropdownButton<String> bibleTypeDropdown() {
    List<DropdownMenuItem<String>> bibletype = [];
    for (String bib in bibleType) {
      var newItem = DropdownMenuItem(
        child: Text(bib),
        value: bib,
      );
      bibletype.add(newItem);
    }
    return DropdownButton<String>(
        dropdownColor: Colors.deepPurple,
        value: bibleSpeck,
        items: bibletype,
        onChanged: (value) {
          setState(() {
            bibleSpeck = value;
            getBible();
          });
        });
  }

  DropdownButton<String> bibleChapterDropdown() {
    List<DropdownMenuItem<String>> bibletype = [];
    for (String bib in Chapters) {
      var newItem = DropdownMenuItem(
        child: Text(bib),
        value: bib,
      );
      bibletype.add(newItem);
    }
    return DropdownButton<String>(
        dropdownColor: Colors.deepPurple,
        value: bibleChapter,
        items: bibletype,
        onChanged: (value) {
          setState(() {
            bibleChapter = value;
            getBible();
          });
        });
  }

  @override
  void initState() {
    getBible();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Choose Your \nPreferred Bible",
                    style: GoogleFonts.frankRuhlLibre(fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black26,
                    ),
                    child: bibleTypeDropdown(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Choose Your Book ",
                    style: GoogleFonts.frankRuhlLibre(fontSize: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black26),
                    child: bibleNameDropdown(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Choose a  Chapter ",
                    style: GoogleFonts.frankRuhlLibre(fontSize: 20),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black26),
                    child: Center(child: bibleChapterDropdown()),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                setState(() {
                  getBible();
                  if (decodedBible != null && bibleSpeck != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BibleBook(
                        book: decodedBible,
                        bibleVersion: bibleSpeck,
                      );
                    }));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ErrorScreen();
                    }));
                  }
                });
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 20,
                          offset: Offset(0, 10))
                    ]),
                child: Center(
                    child: Text(
                  'Check ✔',
                  style: GoogleFonts.frankRuhlLibre(fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
