import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

final Set<Marker> _markers = {};

class _MyAppState extends State<MyApp> {
  GoogleMapController myMapController;
  final Set<Marker> _markers = new Set();
  static const LatLng _mainLocation = const LatLng(19.0737446, 72.8994785);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
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


            ),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 250.0,
              child: DrawerHeader(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          child: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                                'https://i.ibb.co/jDvLWGV/user.png'),
                            backgroundColor: Colors.white,
                            radius: 30.0,
                          ),
                        ),
                        new Container(
                          child: new Text(
                            "    Sohil Luhar",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                        )
                      ],
                    ),
                    new Row(children: <Widget>[
                      new Container(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: new Text("Do more with your account",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 14.0))))
                    ]),
                    new Row(children: <Widget>[
                      new Container(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: new Text("Make money driving",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 14.0))))
                    ])
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Your Trips',
                style: new TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Help',
                style: new TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Payment',
                style: new TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Free Rides',
                style: new TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: new TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
//            Expanded(
//              child: new Align(
//                alignment: Alignment.bottomRight,
//                child: Text('Get Food Delivery',style: new TextStyle(
//                    fontSize: 22
//                ),)
//                ,
//              ),
//            )
          ],
        ),
      ),
    ));
  }



  Set<Marker> myMarker() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        icon: BitmapDescriptor.defaultMarker,//(,"assets/images/taxi.png"),
      ));
    });

    return _markers;
  }
}
