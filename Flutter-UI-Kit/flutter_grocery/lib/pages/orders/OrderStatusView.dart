import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class OrderStatusView extends StatelessWidget {
  final String status;
  final Color bgColor, textColor;

  OrderStatusView({this.status, this.bgColor, this.textColor}) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            Constant.HALF_PADDING_VIEW,
            Constant.HALF_PADDING_VIEW / 2,
            Constant.HALF_PADDING_VIEW,
            Constant.HALF_PADDING_VIEW / 2),
        child: TextWidget(
          text: status,
          fontSize: Constant.SMALL_TEXT_FONT,
          fontColor: textColor,
        ),
      ),
    );
  }
}
