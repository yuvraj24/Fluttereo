import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class MainBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function onTabPress;

  MainBottomNavBar({@required this.selectedIndex, @required this.onTabPress})
      : super();

  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: TextWidget(text: Constant.SHOP)),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            title: TextWidget(text: Constant.MY_CART)),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
            ),
            title: TextWidget(text: Constant.ORDERS)),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            title: TextWidget(text: Constant.ACCOUNT))
      ],
      currentIndex: widget.selectedIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,

      // selectedItemColor: Pallete.primaryColor,
      selectedLabelStyle: TextStyle(color: Pallete.primaryColor, fontSize: 12),
      selectedIconTheme: IconThemeData(size: 30, color: Pallete.primaryColor),

      // unselectedItemColor: Pallete.textSubTitle,
      unselectedIconTheme: IconThemeData(size: 30, color: Colors.grey[400]),
      onTap: widget.onTabPress,
      backgroundColor: Colors.white,
    );
  }
}
