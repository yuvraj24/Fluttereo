import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'DrawerItem.dart';

class FirstScreen extends StatefulWidget {
  final DrawerItem drawerItem;

  FirstScreen({Key key, @required this.drawerItem}) : super(key: key);

  @override
  FirstScreenState createState() {
    return new FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Scaffold(
//
//    )

    return new Center(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          widget.drawerItem.icon,
          size: 54.0,
        ),
        new Text(
          widget.drawerItem.title,
          style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
        ),
      ],
    ));
  }
}
