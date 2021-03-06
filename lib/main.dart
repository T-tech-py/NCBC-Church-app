import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ncbc_app/Screens/landingpage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(Ncbc()));
}

class Ncbc extends StatefulWidget {
  @override
  _NcbcState createState() => _NcbcState();
}

class _NcbcState extends State<Ncbc> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.deepPurple[400],
        ),
        home: LandingPage(), //HomePage(),
      ),
    );
  }
}
