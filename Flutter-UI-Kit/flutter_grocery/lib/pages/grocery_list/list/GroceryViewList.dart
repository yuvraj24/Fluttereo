import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryItem.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';

// ignore: must_be_immutable
class GroceryViewList extends StatefulWidget {
  List<Grocery> listGrocery = [];
  bool isFromHome = false;

  GroceryViewList({this.listGrocery, this.isFromHome}) : super();

  @override
  _GroceryViewListState createState() => _GroceryViewListState();
}

class _GroceryViewListState extends State<GroceryViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: widget.isFromHome == null
            ? AlwaysScrollableScrollPhysics()
            : widget.isFromHome
                ? NeverScrollableScrollPhysics()
                : AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(Constant.HALF_PADDING_VIEW),
        shrinkWrap: true, // Important else view disappears
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Constant.HALF_PADDING_VIEW / 2,
            mainAxisSpacing: Constant.HALF_PADDING_VIEW / 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height /
                    (Platform.isIOS ? 1.40 : 1.05))),
        itemBuilder: (BuildContext context, int index) => Container(
          child: GroceryItem(grocery: widget.listGrocery[index]),
        ),
        itemCount: widget.listGrocery.length,
      ),
    );
  }
}
