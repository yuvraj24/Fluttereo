import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class LandingPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Image.asset(
            '${Constant.PATH_IMAGE}/app_icon.jpg',
            width: 60,
            height: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: TextWidget(
            text: Constant.WELCOME,
            fontSize: Constant.BIG_TEXT_FONT,
            fontColor: Pallete.textColor,
            fontFamily: Constant.ROBOTO_BOLD,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: TextWidget(
            text: Constant.APP_NAME,
            fontSize: Constant.BIG_TEXT_FONT,
            fontColor: Pallete.textColor,
            fontFamily: Constant.ROBOTO_BOLD,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
          child: TextWidget(
            text: Constant.WELCOME_TEXT,
            fontSize: Constant.TEXT_FONT,
            fontColor: Pallete.textSubTitle,
            maxLines: 20,
          ),
        ),
      ],
    );
  }
}
