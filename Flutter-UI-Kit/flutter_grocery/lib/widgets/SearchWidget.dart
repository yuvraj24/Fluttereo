import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/StyleUtil.dart';

class SearchWidget extends AppBar {
  final Function onPress, onSearch, onClear;
  final String textSearch;

  SearchWidget({this.textSearch, this.onPress, this.onSearch, this.onClear})
      : super();

  @override
  Color get backgroundColor => Pallete.primaryColor;

  @override
  Widget get leading => IconButton(
        icon: Icon(Icons.chevron_left),
        onPressed: () {
          onPress();
        },
        iconSize: 36,
      );

  @override
  Widget get title => Container(
        child: Center(
          child: TextFormField(
            style: StyleUtil.textSearchStyle,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: StyleUtil.textSearchHintStyle,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            cursorColor: Colors.white,
            autofocus: true,
            onChanged: (data) {
              onSearch(data);
            },
          ),
        ),
      );

  @override
  List<Widget> get actions => [
        Padding(
          padding: const EdgeInsets.all(Constant.HALF_PADDING_VIEW),
          child: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              onClear();
            },
            iconSize: 26,
          ),
        )
      ];
}
