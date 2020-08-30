import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/util/StyleUtil.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constant.APP_NAME,
      darkTheme: StyleUtil.themeData,
      theme: StyleUtil.themeData,
      home: SplashWidget(title: Constant.APP_NAME),
      routes: Router.getRoutePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashWidget extends StatefulWidget {
  SplashWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  SplashWidgetState createState() => SplashWidgetState();
}

class SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, Router.LANDING, ModalRoute.withName(Router.LANDING)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Image.asset(
            '${Constant.PATH_IMAGE}/grocery.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Color.fromARGB(150, 0, 0, 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    '${Constant.PATH_IMAGE}/app_icon.jpg',
                    width: 120,
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: TextWidget(
                      text: Constant.APP_NAME,
                      fontColor: Colors.white,
                      fontSize: Constant.BIG_TEXT_FONT,
                      fontFamily: Constant.ROBOTO_BOLD,
                    ),
                  ),
                  TextWidget(
                    text: Constant.SPLASH_TEXT,
                    fontColor: Colors.white,
                    fontSize: Constant.TEXT_FONT,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
