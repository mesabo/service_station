import 'package:flutter/material.dart';
import 'package:ivoirestation/consts/backgrounds.dart';
import 'package:ivoirestation/home_widget.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: BGColor.primarybg
      ),
      home: Home(),
    );
  }
}
