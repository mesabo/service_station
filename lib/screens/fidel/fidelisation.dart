import 'package:flutter/material.dart';
import 'package:ivoirestation/consts/backgrounds.dart';
import 'package:ivoirestation/screens/appBar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Fidelisation extends StatefulWidget {
  final Color color;

  Fidelisation(this.color);

  @override
  _FidelisationState createState() => _FidelisationState();
}

class _FidelisationState extends State<Fidelisation> {
  Bar bar = new Bar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bar.myappBar(BGColor.primarybg, "Fidelistion"),
        backgroundColor: BGColor.orange50bg,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
                alignment: Alignment.center,
                child: Text(
                  "Programme de fidélistaion",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey,
                      fontSize: 22.0),
                )),
            new CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1300,
              lineWidth: 15.0,
              percent: 0.94,
              center: Container(
                  height: 70,
                  width: 100,
                  //color: Colors.amberAccent,
                  alignment: Alignment.center,
                  child: ListTile(
                    title: Text("470",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)),
                    subtitle: Text(
                      "sur 500 pts",
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: BGColor.whitebg,
              progressColor: BGColor.deeporangebg,
            ),
            new Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Atteignez le nombre de points demandé," +
                        " et faites trois fois le plein" +
                        " dans nos stations de service.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey,
                        fontSize: 22.0),
                  ),
                )),
          ],
        ));
  }
}
