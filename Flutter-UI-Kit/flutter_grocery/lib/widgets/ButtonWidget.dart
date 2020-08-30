import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final Color buttonColor;
  final bool isBorder;
  final String fontFamily;
  final Function() onPress;

  ButtonWidget(
      {Key key,
      @required this.text,
      this.fontSize,
      this.fontColor,
      this.buttonColor,
      this.isBorder,
      this.fontFamily,
      this.onPress})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(
          Constant.PADDING_VIEW, 0, Constant.PADDING_VIEW, 0),
      child: SizedBox(
        height: Constant.BUTTON_HEIGHT,
        child: RaisedButton(
          child: Text(
            this.widget.text,
            style: TextStyle(
              color: this.widget.fontColor,
              fontSize: this.widget.fontSize,
              fontFamily: widget.fontFamily == null
                  ? Constant.ROBOTO_MEDIUM
                  : Constant.ROBOTO_REGULAR,
            ),
          ),
          onPressed: this.widget.onPress != null ? this.widget.onPress : () {},
          color: widget.buttonColor,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: widget.isBorder != null && widget.isBorder
                      ? Colors.grey
                      : Colors.transparent)),
        ),
      ),
    ));
  }
}
