import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/account/AccountsPage.dart';

import 'package:flutter_grocery/pages/auth/LandingPage.dart';
import 'package:flutter_grocery/pages/auth/LoginPage.dart';
import 'package:flutter_grocery/pages/auth/VerifyOTPPage.dart';
import 'package:flutter_grocery/pages/cart/CartDetailsPage.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/GroceryDetailPage.dart';
import 'package:flutter_grocery/pages/grocery_list/list/GroceryListPage.dart';
import 'package:flutter_grocery/pages/home/HomePage.dart';
import 'package:flutter_grocery/pages/home/TabHomePage.dart';
import 'package:flutter_grocery/pages/orders/OrderDetailsPage.dart';
import 'package:flutter_grocery/pages/orders/OrdersPage.dart';
import 'package:flutter_grocery/pages/search/SearchGroceryPage.dart';

class Router {
  static const LANDING = "./landing";
  static const LOGIN = "./login";
  static const OTP = "./otp";
  static const TABS = "./tabs";
  static const SEARCH = "./search";
  static const HOME = "./home";
  static const GROCERY_LIST = "./groceryList";
  static const GROCERY_DETAIL = "./groceryDetail";
  static const ORDERS = "./orders";
  static const ORDER_DETAILS = "./orderDetail";
  static const CART_DETAILS = "./cartDetail";
  static const ACCOUNTS = "./accounts";

  static Map<String, WidgetBuilder> getRoutePage() {
    return <String, WidgetBuilder>{
      Router.LANDING: (BuildContext context) => LandingPage(),
      Router.LOGIN: (BuildContext context) => LoginPage(),
      Router.OTP: (BuildContext context) => VerifyOTPPage(),
      Router.TABS: (BuildContext context) => TabHomePage(),
      Router.SEARCH: (BuildContext context) => SearchGroceryPage(),
      Router.HOME: (BuildContext context) => HomePage(),
      Router.GROCERY_LIST: (BuildContext context) => GroceryListPage(),
      Router.GROCERY_DETAIL: (BuildContext context) => GroceryDetailPage(),
      Router.ORDERS: (BuildContext context) => OrdersPage(),
      Router.ORDER_DETAILS: (BuildContext context) => OrderDetailsPage(),
      Router.CART_DETAILS: (BuildContext context) => CartDetailsPage(),
      Router.ACCOUNTS: (BuildContext context) => AccountsPage(),
    };
  }
}
