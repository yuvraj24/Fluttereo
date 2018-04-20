import 'package:flutter/material.dart';

import 'button.dart';
import 'form.dart';
import 'gridview.dart';
import 'listview.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void switchView(StatefulWidget widget) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) {
        return widget;
      }),
    );
  }

  ListTile renderViews(String title, StatefulWidget widget) {
    return new ListTile(
      onTap: () {
        switchView(widget);
      },
      title: new Text(title,
          style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//      subtitle: new Text(''),
      leading: new Icon(
        Icons.arrow_forward,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: <Widget>[
          renderViews('Button', new ButtonDemo()),
          renderViews('ListView', new ListViewDemo()),
          renderViews('GridView', new GridViewDemo()),
          renderViews('Forms', new FormDemo()),
        ],
      ),
    );
  }
}
