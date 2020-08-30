import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryTypeItem extends StatefulWidget {
  final String image;
  final String text;

  GroceryTypeItem({this.image, this.text}) : super();

  @override
  _GroceryTypeItemState createState() =>
      _GroceryTypeItemState(image: image, text: text);
}

class _GroceryTypeItemState extends State<GroceryTypeItem> {
  final String image;
  final String text;

  _GroceryTypeItemState({this.image, this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(Router.GROCERY_LIST,
                  arguments: ParamType(title: text)),
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(Constant.PADDING_VIEW - 5),
                  child: Image.asset(image),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextWidget(
              text: text,
              fontColor: Pallete.textSubTitle,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
