import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/GroceryProductDescription.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/pages/orders/OrderCurrentStatus.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/widgets/MainAppBar.dart';

class OrderDetailsPage extends StatefulWidget {
  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    ParamType paramType = ModalRoute.of(context).settings.arguments;
    Orders orders = paramType.orders;

    return Scaffold(
      appBar: MainAppBar(
        context: context,
        text: paramType.title,
        isHideSearch: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroceryProductDescription(
                title: Constant.BOOKING_DATE,
                description: '${orders.date}',
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              OrderCurrentStatus(orders: orders),
              Divider(
                thickness: 1,
                height: 1,
              ),
              GroceryProductDescription(
                title: Constant.DESTINATION,
                description: Constant.PRODUCT_ADDRESS,
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              GroceryProductDescription(
                title: Constant.COURIER,
                description: '${Constant.APP_NAME} ${Constant.COURIER}',
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              GroceryProductDescription(
                title: Constant.TOTAL_PAYMENT,
                description: '${Constant.RUPEE} ${orders.totalPayment}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
