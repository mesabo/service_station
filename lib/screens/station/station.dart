import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ivoirestation/consts/backgrounds.dart';
import 'package:ivoirestation/screens/appBar.dart';

class Station extends StatefulWidget {
  final Color color;

  Station(this.color);

  @override
  _StationState createState() => _StationState();
}

class _StationState extends State<Station> {
  Completer<GoogleMapController> _controller = Completer();
  Bar bar = new Bar();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar.mysearchBar(BGColor.primarybg, "Sation la plus proche"),
      body: Stack(
        children: <Widget>[
          _googlemap(context),
          //_zoomInfunction(),
          //_zoomOutfunction(),
          //_containerfunction(),
        ],
      ),
    );
  }

  Widget _googlemap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(5.3893, -39869), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {angreMarker, palmeraieMarker},
      ),
    );
  }

  Marker angreMarker = Marker(
      markerId: MarkerId("angré"),
      position: LatLng(5.3893, -39869),
      infoWindow: InfoWindow(title: "Pétro Ivoir"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
  Marker palmeraieMarker = Marker(
      markerId: MarkerId("angré"),
      position: LatLng(5.3893, -39869),
      infoWindow: InfoWindow(title: "Pétro Ivoir"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
}
