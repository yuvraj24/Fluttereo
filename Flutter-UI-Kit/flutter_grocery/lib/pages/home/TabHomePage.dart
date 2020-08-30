import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/account/AccountsPage.dart';
import 'package:flutter_grocery/pages/cart/CartDetailsPage.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryViewList.dart';
import 'package:flutter_grocery/pages/home/HomePage.dart';
import 'package:flutter_grocery/pages/orders/OrdersPage.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/widgets/HomeAppBar.dart';
import 'package:flutter_grocery/widgets/MainBottonNavBar.dart';

class TabHomePage extends StatefulWidget {
  @override
  _TabHomePageState createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  int selectedIndex = 0;
  String title = Constant.APP_NAME;
  final List<String> tabNames = [
    Constant.APP_NAME,
    Constant.MY_CART,
    Constant.ORDERS,
    Constant.ACCOUNT
  ];
  final List<Widget> widgeList = <Widget>[
    HomePage(),
    CartDetailsPage(),
    OrdersPage(),
    AccountsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      title = tabNames[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(title);
    return Scaffold(
        appBar: HomeAppBar(
            text: title,
            isCenterTitle: false,
            context: context,
            selectedIndex: selectedIndex),
        body: widgeList[selectedIndex],
        bottomNavigationBar: MainBottomNavBar(
            selectedIndex: selectedIndex, onTabPress: _onItemTapped));
  }
}
