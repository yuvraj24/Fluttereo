import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class TextAppBar extends StatefulWidget {
  final String text;

  TextAppBar({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  _TextAppBarState createState() => _TextAppBarState();
}

class _TextAppBarState extends State<TextAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextWidget(
        text: widget.text != null ? widget.text : "",
        fontColor: Pallete.toolbarItemColor,
        fontSize: Constant.APP_BAR_TEXT_FONT,
        fontFamily: Constant.ROBOTO_MEDIUM,
      ),
    );
  }
}
