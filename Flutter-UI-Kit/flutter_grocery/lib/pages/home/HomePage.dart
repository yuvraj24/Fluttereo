import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewList.dart';
import 'package:flutter_grocery/pages/home/GroceryTypesView.dart';
import 'package:flutter_grocery/pages/home/HomePromoView.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Helper.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Pallete.appBgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroceryTypesView(),
              HomePromoView(),
              Padding(
                padding: const EdgeInsets.fromLTRB(Constant.PADDING_VIEW,
                    Constant.PADDING_VIEW * 2, Constant.PADDING_VIEW, 0),
                child: TextWidget(
                  text: "Recommended for you",
                  fontSize: Constant.HINT_TEXT_FONT,
                  fontColor: Pallete.textColor,
                  fontFamily: Constant.ROBOTO_BOLD,
                ),
              ),
              GroceryViewList(
                listGrocery: Helper.getVegetableList(),
                isFromHome: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
