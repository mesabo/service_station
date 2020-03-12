import 'package:flutter/material.dart';

class Bar {
  Bar();
  Widget myappBar(Color color, String title) {
    return AppBar(
      title: Text(
        "$title",
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      backgroundColor: color,
      elevation: 0.1,
      centerTitle: true,
    );
  }
}
