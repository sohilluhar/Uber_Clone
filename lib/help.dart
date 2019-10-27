//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        routes: {
          "/Help": (context) => new Help(),
        },
        home: createhelp());
  }
}

class createhelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: new Column(
        children: <Widget>[
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("All Topics",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("Trips Issues and Refunds",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 20.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("Account Payment Options",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("More",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("A Guide to Uber",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("Signing Up",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
          new Row(children: <Widget>[
            new Container(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: new Text("Accessibility",
                        style: new TextStyle(
                            color: Colors.black, fontSize: 14.0))))
          ]),
        ],
      ),
    );
  }
}
