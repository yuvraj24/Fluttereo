import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/StyleUtil.dart';

// ignore: must_be_immutable
class AddQuantityView extends StatefulWidget {
  final Function modifyQuantity;
  final double viewSize;
  final int index;

  AddQuantityView({this.modifyQuantity, this.viewSize, this.index}) : super();

  @override
  _AddQuantityViewState createState() => _AddQuantityViewState();
}

class _AddQuantityViewState extends State<AddQuantityView> {
  int numOfItems = 1;

  void changeQuantity(type) {
    setState(() {
      numOfItems =
          (type == 1) ? numOfItems + 1 : numOfItems == 1 ? 1 : numOfItems - 1;
      widget.modifyQuantity(type, numOfItems, widget.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Pallete.countViewColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constant.BORDER_RADIUS)),
      elevation: Constant.CARD_ELEVATION - 0.5,
      child: SizedBox(
        height: widget.viewSize,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: widget.viewSize,
              height: widget.viewSize,
              child: Center(
                  child: IconButton(
                color: Pallete.textSubTitle,
                iconSize: widget.viewSize / 2,
                icon: Icon(Icons.remove),
                onPressed: () => changeQuantity(0),
              )),
            ),
            Container(
              color: Pallete.appBgColor,
              width: widget.viewSize,
              height: widget.viewSize,
              child: Center(
                  child: Text(
                '$numOfItems',
                style: StyleUtil.textAddQuantityStyle,
              )),
            ),
            Container(
              width: widget.viewSize,
              height: widget.viewSize,
              child: Center(
                  child: IconButton(
                color: Pallete.textSubTitle,
                icon: Icon(Icons.add),
                iconSize: widget.viewSize / 2,
                onPressed: () => changeQuantity(1),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
