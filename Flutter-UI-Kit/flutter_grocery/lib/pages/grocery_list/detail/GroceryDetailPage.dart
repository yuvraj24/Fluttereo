import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/GroceryNamePriceView.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/GroceryProductDescription.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewHorizontalList.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewList.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Helper.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/MainAppBar.dart';
import 'package:flutter_grocery/widgets/NameBottonButton.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryDetailPage extends StatefulWidget {
  @override
  _GroceryDetailPageState createState() => _GroceryDetailPageState();
}

class _GroceryDetailPageState extends State<GroceryDetailPage> {
  @override
  Widget build(BuildContext context) {
    ParamType paramType = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: MainAppBar(
        context: context,
        text: "",
        isCenterTitle: false,
        isHideSearch: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                      tag: paramType.heroId,
                      child: Image.asset(
                        paramType.grocery.image,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3,
                        fit: BoxFit.contain,
                      )),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Constant.BORDER_RADIUS))),
                    elevation: Constant.CARD_ELEVATION,
                    margin: EdgeInsets.all(Constant.HALF_PADDING_VIEW),
                    color: Pallete.countViewColor,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(
                            Constant.HALF_PADDING_VIEW,
                            Constant.HALF_PADDING_VIEW / 2,
                            Constant.HALF_PADDING_VIEW,
                            Constant.HALF_PADDING_VIEW / 2),
                        child: TextWidget(
                          text: paramType.grocery.size,
                          fontColor: Pallete.textSubTitle,
                          fontFamily: Constant.ROBOTO_MEDIUM,
                          fontSize: Constant.SUB_TEXT_FONT,
                        )),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              GroceryNamePriceView(
                grocery: paramType.grocery,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Divider(
                  height: 2,
                  thickness: 1,
                ),
              ),
              GroceryProductDescription(
                title: Constant.PRODUCT_DETAIL,
                description: paramType.grocery.details,
              ),
              Container(
                color: Pallete.appBgColor,
                child: GroceryViewHorizontalList(
                  listGrocery: Helper.getVegetableList(),
                  isFromHome: true,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: NameBottonButton(
        name: "Add to Cart",
        onTabPress: null,
      ),
    );
  }
}
