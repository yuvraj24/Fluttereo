import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/AddQuatityView.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class GroceryNamePriceView extends StatefulWidget {
  final Grocery grocery;

  GroceryNamePriceView({this.grocery}) : super();

  @override
  _GroceryNamePriceViewState createState() => _GroceryNamePriceViewState();
}

class _GroceryNamePriceViewState extends State<GroceryNamePriceView> {
  int numOfItems = 1;

  void modifyQuantity(type, numItems, index) {
    setState(() {
      switch (type) {
        case 1:
          this.numOfItems = numItems++;
          break;

        case 0:
          numOfItems = numItems--;
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(
          Constant.PADDING_VIEW,
          Constant.HALF_PADDING_VIEW,
          Constant.PADDING_VIEW,
          Constant.HALF_PADDING_VIEW),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: TextWidget(
                  text: widget.grocery.name,
                  fontColor: Pallete.textColor,
                  fontSize: Constant.APP_BAR_TEXT_FONT,
                  fontFamily: Constant.ROBOTO_MEDIUM,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: Constant.HALF_PADDING_VIEW,
              ),
            ],
          ),
          SizedBox(
            height: Constant.HALF_PADDING_VIEW / 2,
          ),
          Row(
            children: [
              Expanded(
                child: TextWidget(
                  text: "₹ ${widget.grocery.price * numOfItems}",
                  fontColor: Pallete.primaryColor,
                  fontSize: Constant.PRICE_TEXT_FONT,
                  fontFamily: Constant.ROBOTO_MEDIUM,
                ),
              ),
              AddQuantityView(
                modifyQuantity: modifyQuantity,
                viewSize: 35,
              )
            ],
          ),
          SizedBox(
            height: Constant.HALF_PADDING_VIEW,
          ),
        ],
      ),
    );
  }
}
