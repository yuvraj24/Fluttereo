import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryItem.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

// ignore: must_be_immutable
class GroceryViewHorizontalList extends StatefulWidget {
  List<Grocery> listGrocery = [];
  bool isFromHome = false;

  GroceryViewHorizontalList({this.listGrocery, this.isFromHome}) : super();

  @override
  _GroceryViewHorizontalListState createState() =>
      _GroceryViewHorizontalListState();
}

class _GroceryViewHorizontalListState extends State<GroceryViewHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
                Constant.PADDING_VIEW, Constant.PADDING_VIEW, 0, 0),
            child: TextWidget(
              text: "You might also need",
              fontColor: Pallete.textColor,
              fontSize: Constant.HINT_TEXT_FONT,
              fontFamily: Constant.ROBOTO_MEDIUM,
            ),
          ),
          Expanded(
            child: ListView.builder(
              // physics: widget.isFromHome == null
              //     ? AlwaysScrollableScrollPhysics()
              //     : widget.isFromHome
              //         ? NeverScrollableScrollPhysics()
              //         : AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(Constant.HALF_PADDING_VIEW),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemExtent: 220,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GroceryItem(grocery: widget.listGrocery[index]),
                ),
              ),
              itemCount: widget.listGrocery.length,
            ),
          ),
        ],
      ),
    );
  }
}
