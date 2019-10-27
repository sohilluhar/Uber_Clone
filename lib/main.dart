import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'help.dart';

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

//  static var screensize = size;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        routes: {
          '/Help': (context) => new Help(),
        },
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: Stack(
//
              children: <Widget>[
                GoogleMap(
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
                Container(
//                  margin: EdgeInsets.only(top: 80, right: 10),
                  alignment: Alignment.bottomCenter,

                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Row(children: <Widget>[
                          new Container(
                              height: 60.0,
                              width: 360.0,
                              color: Colors.white,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  child: new Text("Good evening , Sohil",
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                          color: Colors.black,
                                          backgroundColor: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold))))
                        ]),
                        new Row(children: <Widget>[
                          new Container(
                              color: Colors.white,
                              height: 60.0,
                              width: 225.0,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 15),
                                  child: RaisedButton(
                                    onPressed: null,
                                    color: Colors.black12,
                                    child: Text(
                                      "Where to  ?",
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ))),
                          new Container(
                              color: Colors.white,
                              height: 60.0,
                              width: 135.0,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 20, 15),
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/Help");
                                    },
                                    color: Colors.black12,
                                    child: Text(
                                      "Schedule",
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ))),
                        ]),
                        new Row(
                          children: <Widget>[
                            new Container(
                                alignment: Alignment.bottomLeft,
                                color: Colors.white,
                                height: 60.0,
                                width: 360.0,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                                    child: FlatButton.icon(
                                        onPressed: null,
                                        icon: Icon(Icons.stars),
                                        label: Text(
                                          "Choose a saved place",
                                          textAlign: TextAlign.start,
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ))))
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Container(
                              color: Colors.white,
                              height: 60.0,
                              width: 180.0,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 15),
                                child: FlatButton.icon(
                                    onPressed: null,
                                    icon: Icon(Icons.local_taxi),
                                    label: Text(
                                      "Ride",
                                      textAlign: TextAlign.start,
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            new Container(
                              color: Colors.white,
                              height: 60.0,
                              width: 180.0,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                                child: FlatButton.icon(
                                    onPressed: null,
                                    icon: Icon(Icons.restaurant),
                                    label: Text(
                                      "Order Food",
                                      textAlign: TextAlign.start,
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
//                FloatingActionButton(
//                  onPressed: () {
//                    Fluttertoast.showToast(
//                        msg: "Help clicked",
//                        toastLength: Toast.LENGTH_LONG,
//                        gravity: ToastGravity.CENTER,
//                        backgroundColor: Colors.blue,
//                        textColor: Colors.red,
//                        fontSize: 20.0);
//                  },
//                ),
              ]),
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
                                          color: Colors.white,
                                          fontSize: 14.0))))
                        ]),
                        new Row(children: <Widget>[
                          new Container(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: new Text("Make money driving",
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0))))
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
//                    // Update the state of the
//                    Fluttertoast.showToast(
//                        msg: "Help clicked",
//                        toastLength: Toast.LENGTH_LONG,
//                        gravity: ToastGravity.CENTER,
//                        backgroundColor: Colors.blue,
//                        textColor: Colors.red,
//                        fontSize: 20.0);
                    Navigator.pushNamed(context, "/Help");

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
        icon: BitmapDescriptor.defaultMarker, //(,"assets/images/taxi.png"),
      ));
    });

    return _markers;
  }
}
