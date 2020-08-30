import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';
import 'package:flutter_grocery/pages/orders/OrdersItem.dart';
import 'package:flutter_grocery/util/Helper.dart';
import 'package:flutter_grocery/util/Pallete.dart';

class OrdersPage extends StatefulWidget {
  final List<Orders> listOrders = Helper.getOrderList();

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.appBgColor,
      child: ListView.builder(
          itemCount: widget.listOrders.length,
          itemBuilder: (BuildContext context, int index) {
            return OrdersItem(orders: widget.listOrders[index]);
          }),
    );
  }
}
