import 'package:flutter/material.dart';

class ProfileClient extends StatefulWidget {
  final Color color;

  ProfileClient(this.color);

  @override
  _ProfileClientState createState() => _ProfileClientState();
}

class _ProfileClientState extends State<ProfileClient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}