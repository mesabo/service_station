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
            Text(
              "Messou Franck Junior"
            )
            // name
            
          ],
        ),
      ),
    );
  }
}
