import 'package:flutter/material.dart';

class Station extends StatefulWidget {
  final Color color;

  Station(this.color);

  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}