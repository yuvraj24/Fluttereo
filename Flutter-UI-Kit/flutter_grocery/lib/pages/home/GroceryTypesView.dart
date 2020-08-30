import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home/GroceryTypeItem.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryTypesView extends StatefulWidget {
  @override
  _GroceryTypesViewState createState() => _GroceryTypesViewState();
}

class _GroceryTypesViewState extends State<GroceryTypesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Constant.PADDING_VIEW),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Constant.HALF_PADDING_VIEW,
          ),
          TextWidget(
            text: Constant.LOOKING_FOR,
            fontSize: Constant.HINT_TEXT_FONT,
            fontColor: Pallete.textColor,
            fontFamily: Constant.ROBOTO_BOLD,
          ),
          SizedBox(height: Constant.HALF_PADDING_VIEW),
          Row(
            children: [
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/vegetables.png",
                  text: Constant.VEGATABLES),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/fruits.png",
                  text: Constant.FRUITS),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/milkeggs.png",
                  text: Constant.MILK_EGG),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/seafood.png",
                  text: Constant.SEAFOOD),
            ],
          ),
          SizedBox(height: Constant.HALF_PADDING_VIEW),
          Row(
            children: [
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/bread.png",
                  text: Constant.BREAD),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/meat.png",
                  text: Constant.MEATS),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/frozen.png",
                  text: Constant.FROZEN),
              SizedBox(width: Constant.HALF_PADDING_VIEW),
              GroceryTypeItem(
                  image: "${Constant.PATH_IMAGE}/organic.png",
                  text: Constant.ORGANIC),
            ],
          )
        ],
      ),
    );
  }
}
