import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/list/FilterSortView.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewList.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/MainAppBar.dart';
import 'package:flutter_grocery/util/Helper.dart';

class GroceryListPage extends StatefulWidget {
  @override
  _GroceryListPageState createState() => _GroceryListPageState();
}

class _GroceryListPageState extends State<GroceryListPage> {
  @override
  Widget build(BuildContext context) {
    final ParamType data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: MainAppBar(
        text: data.title,
        isCenterTitle: false,
        context: context,
      ),
      body: SafeArea(
        child: Container(
            color: Pallete.appBgColor,
            child: Column(
              children: [
                FilterSortView(),
                Expanded(
                    child:
                        GroceryViewList(listGrocery: Helper.getVegetableList()))
              ],
            )),
      ),
    );
  }
}
