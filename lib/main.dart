import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: new HomeScreen(title: 'Flutter Demo'),
      ),
    );
  }
}
