import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/ButtonWidget.dart';

class LandingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          text: Constant.LOGIN,
          fontSize: Constant.BUTTON_FONT,
          fontColor: Colors.white,
          buttonColor: Pallete.primaryColor,
          isBorder: false,
          onPress: () {
            Navigator.of(context).pushNamed(Router.LOGIN,
                arguments: ParamType(title: Constant.LOGIN));
          },
        ),
        SizedBox(
          height: 10,
        ),
        ButtonWidget(
          text: Constant.CREATE_ACCOUNT,
          fontSize: Constant.BUTTON_FONT,
          fontColor: Pallete.textColor,
          buttonColor: Colors.white,
          isBorder: true,
          onPress: () {
            Navigator.of(context).pushNamed(Router.LOGIN,
                arguments: ParamType(title: Constant.CREATE_ACCOUNT));
          },
        )
      ],
    );
  }
}
