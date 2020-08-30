import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class NameBottonButton extends StatefulWidget {
  final String name;
  final Function onTabPress;

  NameBottonButton({@required this.name, @required this.onTabPress}) : super();

  @override
  _NameBottonButtonState createState() => _NameBottonButtonState();
}

class _NameBottonButtonState extends State<NameBottonButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Platform.isIOS ? 70 : 50,
      padding: EdgeInsets.fromLTRB(
          0, 0, 0, Platform.isIOS ? Constant.PADDING_VIEW : 0),
      color: Pallete.primaryColor,
      child: FlatButton(
          onPressed: widget.onTabPress,
          child: TextWidget(
            text: widget.name,
            fontColor: Colors.white,
            fontSize: Constant.HINT_TEXT_FONT,
            fontFamily: Constant.ROBOTO_MEDIUM,
          )),
    );
  }
}
