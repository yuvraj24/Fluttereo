import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/cart/CartItem.dart';
import 'package:flutter_grocery/pages/modal/Cart.dart';

class CartView extends StatefulWidget {
  final List<Cart> listCart; 
  final Function modifyQuantity;

  CartView({this.listCart, this.modifyQuantity}) : super();

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        // padding: EdgeInsets.all(Constant.HALF_PADDING_VIEW),
        shrinkWrap: true,
        primary: false,
        // itemExtent: 240,
        itemBuilder: (BuildContext context, int index) => Container(
          child: CartItem(
            cart: widget.listCart[index], 
            modifyQuantity: widget.modifyQuantity,
            index: index
          ),
        ),
        itemCount: widget.listCart.length,
      ),
    );
  }
}
