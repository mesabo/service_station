import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:ivoirestation/consts/backgrounds.dart';
import 'package:ivoirestation/screens/appBar.dart';

class ProfileClient extends StatefulWidget {
  final Color color;

  ProfileClient(this.color);

  @override
  _ProfileClientState createState() => _ProfileClientState();
}

class _ProfileClientState extends State<ProfileClient> {
  Bar bar = new Bar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar.myappBar(BGColor.primarybg, "Prifile"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
//            PROFILE IMAGEVIEW
            CircularProfileAvatar(
              // @TODO
              'https://photos.google.com/photo/AF1QipMcQVqwV5pETVPFQpQ-KrRlgX9rvJyB6WgFXBx4',
              radius: 100,
              backgroundColor: Colors.grey,
              borderWidth: 10,
              initialsText: Text(
                "photo",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              borderColor: Colors.brown,
              elevation: 5.0,
              onTap: () {
                print('profile image clicked');
              },
            ),
//            USER COMPLETE NAME
            Text(
              "Jean Paul Kouassi",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                  fontSize: 22.0),
            ),
            Divider(color: BGColor.blackbg, height: 10.0),
//            USER DETAILS
            Text(
              "Contact: +225 5777-7500",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                  fontSize: 16.0),
            ),
            Text(
              "Résidence: Cocody,Palmeraie",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                  fontSize: 16.0),
            ),
            Text(
              "Véhicule: 6231JE01",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                  fontSize: 16.0),
            ),
//            USER UPDATE PROFILE BUTTON
            RaisedButton(
              onPressed: () {
               // @TODO
              },
              child: Text(
                "modifier le profile",
                style: TextStyle(color: BGColor.whitebg),
              ),
              color: BGColor.secondbg,elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}
