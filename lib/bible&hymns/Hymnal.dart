import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ncbc_app/Screens/hymnscreen.dart';
import 'package:ncbc_app/bible&hymns/hymnfile.dart';

import '../navigate.dart';

class hymnal extends StatefulWidget {
  @override
  _hymnalState createState() => _hymnalState();
}

class _hymnalState extends State<hymnal> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();

    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: hymnTitle.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HymnDisplayScreen(
                    hymn: allHymns.elementAt(index),
                  );
                },
              ),
            );
            // Navigate.push(
            //     screen: HymnDisplayScreen(
            //   hymn: allHymns.elementAt(index),
            // ));
          },
          child: hymnalCard(
            number: index + 1,
            hymnName: hymnTitle.elementAt(index).toString(),
            Value: controller.value,
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
    );
  }
}

class hymnalCard extends StatelessWidget {
  final int number;
  final String hymnName;
  final double Value;

  const hymnalCard(
      {@required this.number, @required this.hymnName, @required this.Value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(Value),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Text(hymnName),
          )
        ],
      ),
    );
  }
}
