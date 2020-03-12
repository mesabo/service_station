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
            CircularProfileAvatar(
              'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
              radius: 100,
              backgroundColor: Colors.green,
              borderWidth: 10,
              initialsText: Text(
                "AD",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              borderColor: Colors.brown,
              elevation: 5.0,
              onTap: () {
                print('adil');
              },
            ),
            CircularProfileAvatar(
              'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
              radius: 120,
              backgroundColor: Colors.green,
              borderWidth: 10,
              initialsText: Text(
                "AD",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              borderColor: Colors.yellow,
              elevation: 5.0,
              foregroundColor: Colors.yellow.withOpacity(0.5),
              onTap: () {
                print('adil');
              },
              showInitialTextAbovePicture: true,
            ),
            
          ],
        ),
      ),
    );
  }
}
