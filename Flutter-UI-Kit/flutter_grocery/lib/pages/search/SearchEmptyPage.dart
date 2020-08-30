import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class SearchEmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '${Constant.PATH_IMAGE}/app_icon.jpg',
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.width / 4.5,
              // color: Colors.grey[500],
            ),
            SizedBox(
              height: Constant.HALF_PADDING_VIEW,
            ),
            TextWidget(
              text: "No grocery found",
              fontColor: Colors.grey[500],
              fontSize: 20,
              fontFamily: Constant.ROBOTO_MEDIUM,
            )
          ],
        ),
      ),
    );
  }
}
