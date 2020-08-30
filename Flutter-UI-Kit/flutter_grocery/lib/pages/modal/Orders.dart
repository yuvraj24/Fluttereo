import 'package:flutter/material.dart';

class Orders {
  Status status;
  String date;
  String transactionId;
  String deliveredTo;
  String totalPayment;

  Orders(
      {@required this.status,
      @required this.date,
      @required this.transactionId,
      @required this.deliveredTo,
      @required this.totalPayment})
      : super();
}

class Status {
  String name;
  Color bgColor;
  Color textColor;

  Status({
    @required this.name,
    @required this.bgColor,
    @required this.textColor,
  }) : super();
}
