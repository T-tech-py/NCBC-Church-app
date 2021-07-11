import 'package:flutter/material.dart';

class Navigate {
  static push({BuildContext context, screen}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }
}
