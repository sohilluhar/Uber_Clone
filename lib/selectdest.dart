import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'main.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        routes: {
          "/Home": (context) => new MyApp1(),
          "/SelectDest": (context) => new MyApp3(),
        },
        home: new MyApp3());
  }
}

class MyApp3 extends StatefulWidget {
  @override
  _MyAppState1 createState() => _MyAppState1();
}

class _MyAppState1 extends State<MyApp3> {
  GoogleMapController myMapController;
  final Set<Marker> _markers = new Set();
  static const LatLng _mainLocation = const LatLng(19.0737446, 72.8994785);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Stack(children: <Widget>[
        new Container(
//                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 700,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _mainLocation,
                zoom: 15.0,
              ),
              markers: this.myMarker(),
              mapType: MapType.normal,
              onMapCreated: (controller) {
                setState(() {
                  myMapController = controller;
                });
              },
            )),
        Center(
          child: new Container(
            color: Colors.black,
            width: 320,
            height: 50,
            margin: EdgeInsets.fromLTRB(0, 575, 0, 15),
            alignment: Alignment.bottomCenter,
            child: new RaisedButton(
              onPressed: () {
//                        AdvancedShare.whatsapp(
//                            msg:
//                                "I'm giving you a free ride on the Uber app (up to Rs. 25). To accept, use code 'wmp9it' to sign up. Enjoy! Details https://www.uber.com/invite/wmp9it"
//                        ).then((response){handleResponse(response,appName:"Whatsapp");});
//                        //TODO: replace Rs.
//                        FlutterShareMe().shareToWhatsApp(
//                            msg:
//                                "I'm giving you a free ride on the Uber app (up to Rs. 25). To accept, use code 'wmp9it' to sign up. Enjoy! Details https://www.uber.com/invite/wmp9it");
              },
              textColor: Colors.white,
              color: Colors.black,
              child: new Text(
                "DONE",
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Set<Marker> myMarker() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        icon: BitmapDescriptor.defaultMarker, //(,"assets/images/taxi.png"),
      ));
    });

    return _markers;
  }
}
