import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/AddQuatityView.dart';
import 'package:flutter_grocery/pages/modal/Cart.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class CartItem extends StatefulWidget {
  final Cart cart;
  final Function modifyQuantity;
  final int index;

  CartItem({this.cart, this.modifyQuantity, this.index}) : super();

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Router.GROCERY_DETAIL,
          arguments: ParamType(
              heroId: widget.cart.grocery.hashCode,
              grocery: widget.cart.grocery)),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 110,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Constant.HALF_PADDING_VIEW),
                  child: Hero(
                    tag: widget.cart.grocery.hashCode,
                    child: Image.asset(
                      '${widget.cart.grocery.image}',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        Constant.HALF_PADDING_VIEW / 2,
                        Constant.HALF_PADDING_VIEW + 5,
                        Constant.HALF_PADDING_VIEW,
                        Constant.HALF_PADDING_VIEW),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: TextWidget(
                          text: widget.cart.grocery.name,
                          fontColor: Pallete.textColor,
                          fontSize: Constant.TEXT_FONT,
                          fontFamily: Constant.ROBOTO_REGULAR,
                        )),
                        Expanded(
                            child: TextWidget(
                          text: widget.cart.grocery.size,
                          fontColor: Pallete.textSubTitle,
                          fontSize: Constant.SUB_TEXT_FONT,
                          fontFamily: Constant.ROBOTO_MEDIUM,
                        )),
                        Expanded(
                            child: TextWidget(
                          text:
                              '${Constant.RUPEE} ${widget.cart.grocery.price}',
                          fontColor: Pallete.primaryColor,
                          fontSize: Constant.HINT_TEXT_FONT,
                          fontFamily: Constant.ROBOTO_MEDIUM,
                        )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      0, 0, Constant.HALF_PADDING_VIEW, 0),
                  child: AddQuantityView(
                      modifyQuantity: widget.modifyQuantity,
                      viewSize: 30,
                      index: widget.index),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 0,
          )
        ],
      ),
    );
  }
}
