import 'package:flutter/material.dart';
// import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
// import 'package:flutter_grocery/util/StyleUtil.dart';
import 'package:flutter_grocery/widgets/TextAppBar.dart';

class MainAppBar extends AppBar {
  final String text;
  final bool isCenterTitle;
  final bool isHideSearch;
  final BuildContext context;

  MainAppBar(
      {this.text,
      this.isCenterTitle,
      this.isHideSearch,
      @required this.context})
      : super();

  @override
  bool get centerTitle => isCenterTitle;

  @override
  Color get backgroundColor => Pallete.toolbarColor;

  @override
  Widget get leading => IconButton(
        icon: Icon(
          Icons.chevron_left,
          color: Pallete.toolbarItemColor,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        iconSize: 36,
      );

  @override
  Widget get title => TextAppBar(text: text);

  @override
  List<Widget> get actions => [
        IconButton(
          icon: Icon(
            Icons.search,
            color: isHideSearch != null && isHideSearch
                ? Colors.transparent
                : Pallete.toolbarItemColor,
          ),
          onPressed: () {
            if (context != null) Navigator.of(context).pushNamed(Router.SEARCH);
          },
          iconSize: 26,
        ),
        IconButton(
          icon: Icon(
            Icons.home,
            color: Pallete.toolbarItemColor,
          ),
          onPressed: () {
            if (context != null)
              Navigator.popUntil(context, ModalRoute.withName(Router.TABS));
          },
          iconSize: 26,
        )
      ];
}
