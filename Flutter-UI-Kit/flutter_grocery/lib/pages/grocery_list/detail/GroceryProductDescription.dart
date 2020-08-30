import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryProductDescription extends StatelessWidget {
  final String title;
  final String description;

  GroceryProductDescription({this.title, this.description}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constant.PADDING_VIEW),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: title,
            fontSize: Constant.HINT_TEXT_FONT,
            fontFamily: Constant.ROBOTO_MEDIUM,
            fontColor: Pallete.textColor,
          ),
          SizedBox(
            height: Constant.HALF_PADDING_VIEW,
          ),
          TextWidget(
            text: description,
            fontSize: Constant.TEXT_FONT,
            fontFamily: Constant.ROBOTO_REGULAR,
            maxLines: 200,
          )
        ],
      ),
    );
  }
}
