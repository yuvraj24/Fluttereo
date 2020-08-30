import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/cart/CartView.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewHorizontalList.dart';
import 'package:flutter_grocery/pages/modal/Cart.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Helper.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class CartDetailsPage extends StatefulWidget {
  @override
  _CartDetailsPageState createState() => _CartDetailsPageState();
}

class _CartDetailsPageState extends State<CartDetailsPage> {
  final List<Cart> cartList = Helper.getCartDetails();
  final List<Cart> cartArray = Helper.getCartDetails();

  void modifyQuantity(type, numOfItems, index) {
    setState(() {
      switch (type) {
        case 1:
          int price = cartList[index].grocery.price * numOfItems;
          cartArray[index].grocery.price = price;
          break;

        case 0:
          int price = cartList[index].grocery.price * numOfItems;
          cartArray[index].grocery.price = price;
          break;
        default:
      }
    });
  }

  int getTotalPrice() {
    int price = 0;
    for (var item in cartArray) {
      price += item.grocery.price;
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.appBgColor,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 0, 0, Constant.MARGIN_50),
            child: Column(
              children: [
                CartView(
                  listCart: cartArray,
                  modifyQuantity: modifyQuantity,
                ),
                GroceryViewHorizontalList(
                  listGrocery: Helper.getVegetableList(),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                thickness: 1,
                height: 2,
              ),
              Container(
                color: Pallete.countViewColor, //0xFFFAFAFA
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(Constant.HALF_PADDING_VIEW + 5,
                    Constant.HALF_PADDING_VIEW, 0, Constant.HALF_PADDING_VIEW),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: '${Constant.TOTAL} : ',
                            fontColor: Pallete.textSubTitle,
                            fontSize: Constant.HINT_TEXT_FONT,
                            fontFamily: Constant.ROBOTO_MEDIUM,
                          ),
                          TextWidget(
                            text: '${Constant.RUPEE} ${getTotalPrice()}',
                            fontColor: Colors.black,
                            fontSize: Constant.APP_BAR_TEXT_FONT,
                            fontFamily: Constant.ROBOTO_BOLD,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        TextWidget(
                          text: '${Constant.CHECKOUT}',
                          fontColor: Colors.black,
                          fontSize: Constant.HINT_TEXT_FONT,
                          fontFamily: Constant.ROBOTO_BOLD,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 24,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
