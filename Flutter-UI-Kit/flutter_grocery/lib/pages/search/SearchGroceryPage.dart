import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewList.dart';
import 'package:flutter_grocery/pages/modal/Grocery.dart';
import 'package:flutter_grocery/pages/search/SearchEmptyPage.dart';
import 'package:flutter_grocery/util/Helper.dart';
import 'package:flutter_grocery/widgets/SearchWidget.dart';

class SearchGroceryPage extends StatefulWidget {
  @override
  _SearchGroceryPageState createState() => _SearchGroceryPageState();
}

class _SearchGroceryPageState extends State<SearchGroceryPage> {
  final String textSearch = "";
  final List<Grocery> listGrocery = Helper.getVegetableList();
  List<Grocery> listData = [];

  void onSearchPackPress() {
    Navigator.of(context).pop();
  }

  void onSearchTyping(String data) {
    // print(data);
    listData.clear();
    if (data != '') {
      List<Grocery> listData1 = [];
      for (Grocery item in listGrocery) {
        if (item.name.toLowerCase().contains(data.toLowerCase())) {
          print(item.name);
          listData1.add(item);
        }
      }
      setState(() {
        listData.addAll([]);
        listData.addAll(listData1);
      });
    } else {
      setState(() {
        listData.addAll([]);
      });
    }
  }

  void onSearchClear() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchWidget(
        textSearch: textSearch,
        onPress: onSearchPackPress,
        onClear: onSearchClear,
        onSearch: onSearchTyping,
      ),
      body: listData.length == 0
          ? SearchEmptyPage()
          : GroceryViewList(listGrocery: listData),
    );
  }
}
