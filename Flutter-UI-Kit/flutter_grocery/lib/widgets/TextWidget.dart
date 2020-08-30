import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';

class TextWidget extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final String fontFamily;
  final int maxLines;

  TextWidget(
      {Key key,
      @required this.text,
      this.fontSize,
      this.fontColor,
      this.fontFamily,
      this.maxLines})
      : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Text(
        widget.text != null ? this.widget.text : "",
        maxLines: widget.maxLines != null ? widget.maxLines : null,
        textScaleFactor: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: this.widget.fontColor,
            fontSize: this.widget.fontSize,
            fontFamily: widget.fontFamily == null
                ? Constant.ROBOTO_REGULAR
                : widget.fontFamily),
      ),
    );
  }
}
