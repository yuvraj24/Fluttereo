import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/auth/LandingButton.dart';
import 'package:flutter_grocery/pages/auth/LandingPageContent.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Stack(
              children: <Widget>[
                Image.asset(
                  '${Constant.PATH_IMAGE}/app_icon.jpg',
                  width: 420,
                  height: MediaQuery.of(context).size.height / 2.9,
                  color: Colors.transparent,
                ),
                Positioned(
                  right: -(MediaQuery.of(context).size.width / 2),
                  child: Image.asset(
                    '${Constant.PATH_IMAGE}/landing_image.png',
                    width: MediaQuery.of(context).size.width + 150,
                    height: MediaQuery.of(context).size.height / 2.5,
                  ),
                ),
              ],
            ),
            LandingPageContent(),
            LandingButton(),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  0, 0, 0, Constant.HALF_PADDING_VIEW),
              child: TextWidget(
                text: Constant.TnC,
                fontColor: Pallete.textSubTitle,
                fontSize: Constant.SMALL_TEXT_FONT,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
