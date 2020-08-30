import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryItem extends StatefulWidget {
  final Grocery grocery;

  GroceryItem({this.grocery});

  @override
  _GroceryItemState createState() => _GroceryItemState();
}

class _GroceryItemState extends State<GroceryItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Constant.CARD_ELEVATION,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(Router.GROCERY_DETAIL,
            arguments: ParamType(
                grocery: widget.grocery, heroId: widget.grocery.hashCode)),
        child: Container(
          padding: EdgeInsets.all(Constant.HALF_PADDING_VIEW),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Hero(
                    tag: widget.grocery.hashCode,
                    child: Image.asset(
                      widget.grocery.image,
                      width: 200,
                      height: 180,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextWidget(
                  text: "${Constant.RUPEE} ${widget.grocery.price}",
                  fontColor: Pallete.primaryColor,
                  fontSize: Constant.APP_BAR_TEXT_FONT,
                  fontFamily: Constant.ROBOTO_BOLD,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 1,
                child: TextWidget(
                  text: widget.grocery.name,
                  fontColor: Pallete.textColor,
                  fontSize: Constant.TEXT_FONT,
                  fontFamily: Constant.ROBOTO_MEDIUM,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 1,
                child: TextWidget(
                  text: widget.grocery.size,
                  fontColor: Pallete.textSubTitle,
                  fontSize: Constant.SUB_TEXT_FONT,
                  fontFamily: Constant.ROBOTO_REGULAR,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
