import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class OrderCurrentStatus extends StatefulWidget {
  final Orders orders;

  OrderCurrentStatus({this.orders}) : super();

  @override
  _OrderCurrentStatusState createState() => _OrderCurrentStatusState();
}

class _OrderCurrentStatusState extends State<OrderCurrentStatus> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constant.PADDING_VIEW),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: Constant.ORDER_STATUS,
                fontSize: Constant.HINT_TEXT_FONT,
                fontColor: Pallete.textColor,
                fontFamily: Constant.ROBOTO_MEDIUM,
              ),
              TextWidget(
                text: widget.orders.date,
                fontSize: Constant.TEXT_FONT,
                fontColor: Pallete.textColor,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, Constant.PADDING_VIEW, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.stop,
                  color: Pallete.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Constant.HALF_PADDING_VIEW, 0, 0, 0),
                  child: TextWidget(
                    text: "Preparing order",
                    fontSize: Constant.TEXT_FONT,
                    fontColor: Pallete.textColor,
                  ),
                )
              ],
            ),
          ),
          Container(
              height: Constant.ORDER_STATUS_HEIGHT,
              width: 25,
              child: VerticalDivider(color: Colors.grey[400])),
          Container(
            // padding: EdgeInsets.fromLTRB(0, Constant.PADDING_VIEW, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.stop,
                  color: Pallete.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Constant.HALF_PADDING_VIEW, 0, 0, 0),
                  child: TextWidget(
                    text: Constant.ORDER_DISPATCHED,
                    fontSize: Constant.TEXT_FONT,
                    fontColor: Pallete.textColor,
                  ),
                )
              ],
            ),
          ),
          Container(
              height: Constant.ORDER_STATUS_HEIGHT,
              width: 25,
              child: VerticalDivider(color: Colors.grey[400])),
          Container(
            // padding: EdgeInsets.fromLTRB(0, Constant.PADDING_VIEW, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.stop,
                  color: Pallete.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Constant.HALF_PADDING_VIEW, 0, 0, 0),
                  child: TextWidget(
                    text: Constant.DELIVER_ORDER,
                    fontSize: Constant.TEXT_FONT,
                    fontColor: Pallete.textColor,
                  ),
                )
              ],
            ),
          ),
          Container(
              height: Constant.ORDER_STATUS_HEIGHT,
              width: 25,
              child: VerticalDivider(color: Colors.grey[400])),
          Container(
            // padding: EdgeInsets.fromLTRB(0, Constant.PADDING_VIEW, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Pallete.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      Constant.HALF_PADDING_VIEW, 0, 0, 0),
                  child: TextWidget(
                    text: Constant.READY_COLLECT,
                    fontSize: Constant.TEXT_FONT,
                    fontColor: Pallete.textColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
