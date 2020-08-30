import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/pages/orders/OrderStatusView.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class OrdersItem extends StatelessWidget {
  final Orders orders;

  OrdersItem({this.orders});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Router.ORDER_DETAILS,
          arguments:
              ParamType(title: orders.transactionId, orders: this.orders)),
      child: Container(
        margin: EdgeInsets.fromLTRB(
            Constant.HALF_PADDING_VIEW,
            Constant.HALF_PADDING_VIEW / 3,
            Constant.HALF_PADDING_VIEW,
            Constant.HALF_PADDING_VIEW / 3),
        child: Card(
          elevation: Constant.CARD_ELEVATION,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(Constant.PADDING_VIEW,
                      Constant.PADDING_VIEW, Constant.PADDING_VIEW, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OrderStatusView(
                        status: orders.status.name,
                        bgColor: orders.status.bgColor,
                        textColor: orders.status.textColor,
                      ),
                      TextWidget(
                        text: orders.date,
                        fontColor: Pallete.textSubTitle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Constant.PADDING_VIEW,
                      Constant.HALF_PADDING_VIEW,
                      Constant.PADDING_VIEW,
                      Constant.PADDING_VIEW),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: Constant.TRANSACTION_ID,
                              fontColor: Pallete.textSubTitle,
                              fontSize: Constant.SMALL_TEXT_FONT,
                              fontFamily: Constant.ROBOTO_MEDIUM,
                            ),
                            SizedBox(
                              height: Constant.HALF_PADDING_VIEW / 2,
                            ),
                            TextWidget(
                              text: orders.transactionId,
                              fontColor: Pallete.textColor,
                              fontSize: Constant.SUB_TEXT_FONT,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: Constant.DELIVERED_TO,
                              fontColor: Pallete.textSubTitle,
                              fontSize: Constant.SMALL_TEXT_FONT,
                              fontFamily: Constant.ROBOTO_MEDIUM,
                            ),
                            SizedBox(
                              height: Constant.HALF_PADDING_VIEW / 2,
                            ),
                            TextWidget(
                              text: orders.deliveredTo,
                              fontColor: Pallete.textColor,
                              fontSize: Constant.SUB_TEXT_FONT,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: Constant.TOTAL_PAYMENT,
                              fontColor: Pallete.textSubTitle,
                              fontSize: Constant.SMALL_TEXT_FONT,
                              fontFamily: Constant.ROBOTO_MEDIUM,
                            ),
                            SizedBox(
                              height: Constant.HALF_PADDING_VIEW / 2,
                            ),
                            TextWidget(
                              text: '${Constant.RUPEE} ${orders.totalPayment}',
                              fontColor: Pallete.textColor,
                              fontSize: Constant.SUB_TEXT_FONT,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
