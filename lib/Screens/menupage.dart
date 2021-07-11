import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ncbc_app/Screens/about.dart';
import 'package:ncbc_app/Screens/announcement.dart';
import 'package:ncbc_app/Screens/events.dart';
import 'package:ncbc_app/Screens/give.dart';
import 'package:ncbc_app/Screens/prayers.dart';
import 'package:ncbc_app/Screens/sermon.dart';
import 'package:ncbc_app/navigate.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/ncbc_app/lib/Screens/bible.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/ncbc_app/lib/Screens/hymns.dart';
//import 'package:overlay_support/overlay_support.dart';
import 'familysong.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(opacity: 0, size: 0),
          title: Text('NCBC CHURCH'),
          centerTitle: true,
          titleSpacing: 2.0,
        ),
        body: Container(
          color: Color(0xffC1C4C9),
          padding: EdgeInsets.all(25),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: MenuCards(
                      icon: Icons.video_call,
                      title: 'Sermon',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Sermon();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: MenuCards(
                      icon: Icons.calendar_today,
                      title: 'Events',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Events();
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                      child: MenuCards(
                    icon: Icons.book,
                    title: 'Bible',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Bible();
                          },
                        ),
                      );
                    },
                  )),
                  SizedBox(width: 15),
                  Expanded(
                      child: MenuCards(
                    icon: Icons.music_note,
                    title: 'Hymns',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Hymns();
                      }));
                    },
                  )),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MenuCards(
                      icon: Icons.notification_important,
                      title: 'Announcement',
                      onPressed: () {
                        //Navigate.push(context: context, screen: Announcement());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Announcement();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: MenuCards(
                      icon: Icons.thumbs_up_down,
                      title: 'Prayers',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Prayers();
                        }));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                      child: MenuCards(
                    icon: Icons.people,
                    title: 'Family Song',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FamilySong();
                          },
                        ),
                      );
                    },
                  )),
                  SizedBox(width: 15),
                  Expanded(
                      child: MenuCards(
                    icon: Icons.favorite,
                    title: 'Give',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Give();
                      }));
                    },
                  )),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  MenuCards(
                    icon: Icons.bubble_chart,
                    title: 'About Us',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AboutUs();
                      }));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCards extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPressed;

  const MenuCards(
      {@required this.icon, @required this.title, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(15),
        height: 180.0,
        width: 200.0,
        decoration: BoxDecoration(
            color: Color(0xffE1E2E5),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              // BoxShadow(
              //     color: Colors.black38,
              //     blurRadius: 25.0,
              //     offset: Offset(0, 15.0))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 60,
              color: Colors.deepPurple,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.play(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
