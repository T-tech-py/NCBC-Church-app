import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT US'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Expanded(child: SundayCards()),
            SizedBox(height: 20),
            Expanded(child: SaturdayCards()),
            SizedBox(height: 20),
            Expanded(
                child: WednesdayCards(
              event: '6:00pm Bible Study & Prayer Service',
              day: 'WEDNESDAY',
            )),
            SizedBox(height: 20),
            Expanded(
                child: WednesdayCards(
              event: 'Child Dedication',
              day: '1st & 3rd SUNDAY',
            )),
            SizedBox(height: 20),
            Expanded(
                child: WednesdayCards(
              event: "Men's Missionary Union - 1st&3rd Sundays - 12noon\n"
                  "Women's Missionary Union - 1st&3rd Sundays - 12noon\n"
                  "Night of Glory - Bi-Month - 11pm\n"
                  "Hour of Turning Point - Even Months",
              day: 'MONTHLY MEETINGS',
            )),
            SizedBox(height: 20),
            Expanded(
                child: WednesdayCards(
              event: "Love Center (Oyelude's House) Brother Abiodun\n"
                  "Overcomers Center(Adesina House) Dnc.Adesina\n"
                  "Light Center (Church) Brother Raph\n"
                  "Testimony Center(Pastor Ejere's House) Sis.Brume\n"
                  "Trinity Center (Adeniji's House) Sis.Adenike\n"
                  "Peace Center (Okunlola's House) Bro. Okunlola\n"
                  "Goodness Center(Ayeteju/Baba-Adisa)Dnc.Fabelurin\n",
              day: 'HOUSE FELLOWSHIP',
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SundayCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 12,
              offset: Offset(0, 25),
            )
          ]),
      child: Row(
        children: <Widget>[
          Expanded(child: Image(image: AssetImage('images/ncbc.png'))),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'SUNDAY',
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '8:00 - 8:30am\n'
                  'Hour of Glory\n\n'
                  '8:30 - 9:30am\n'
                  'Sunday School',
                  style: GoogleFonts.barlow(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 35),
                Text(
                  '8:30 - 11:30am\n'
                  'Sunday Service\n\n'
                  '5:00pm\n'
                  'Home \nFellowship',
                  style: GoogleFonts.barlow(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SaturdayCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 12,
              offset: Offset(0, 25),
            )
          ]),
      child: Row(
        children: <Widget>[
          Expanded(child: Image(image: AssetImage('images/ncbc.png'))),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'SATURDAY',
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '5:00pm - Choir Practice\n'
                  '7:00am - 1st Saturday\n'
                  'Sunday School Teachers\n'
                  'Preparatory Class\n'
                  'Intercessors every Saturday',
                  style: GoogleFonts.barlow(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WednesdayCards extends StatelessWidget {
  final String day;
  final String event;

  const WednesdayCards({@required this.day, @required this.event});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      //height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 12,
              offset: Offset(0, 25),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Image(image: AssetImage('images/bible.jpg')),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  day,
                  style: GoogleFonts.barlow(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  event,
                  style: GoogleFonts.barlow(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
