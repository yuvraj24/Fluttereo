import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
// import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
// import 'package:flutter_grocery/util/StyleUtil.dart';
import 'package:flutter_grocery/widgets/TextAppBar.dart';

class HomeAppBar extends AppBar {
  final String text;
  final bool isCenterTitle;
  final BuildContext context;
  final int selectedIndex;

  HomeAppBar(
      {this.text,
      this.isCenterTitle,
      @required this.context,
      this.selectedIndex})
      : super();

  @override
  bool get centerTitle => isCenterTitle;

  @override
  Color get backgroundColor => Pallete.toolbarColor;

  @override
  Widget get leading => IconButton(
        icon: Image.asset(
          '${Constant.PATH_IMAGE}/app_icon.jpg',
          // color: Pallete.toolbarItemColor,
          width: 32,
        ),
        onPressed: () => {},
      );

  @override
  Widget get title => TextAppBar(
        text: text,
      );

  @override
  List<Widget> get actions => [
        IconButton(
          icon: Icon(
            Icons.search,
            color: selectedIndex == 0
                ? Pallete.toolbarItemColor
                : Colors.transparent,
            size: 26,
          ),
          onPressed: () => {
            if (selectedIndex == 0)
              Navigator.of(context).pushNamed(Router.SEARCH)
          },
        ),
        // IconButton(
        //   icon: Icon(
        //     Icons.notification_important,
        //     color: Pallete.toolbarItemColor,
        //     size: 26,
        //   ),
        //   onPressed: () => {},
        // )
      ];
}
