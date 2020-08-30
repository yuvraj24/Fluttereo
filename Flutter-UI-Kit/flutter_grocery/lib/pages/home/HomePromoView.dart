import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class HomePromoView extends StatelessWidget {
  final List images = [
    // 'promo1.png',
    // 'promo2.png',
    'promo3.png',
    'promo4.jpg',
    // 'promo5.jpg',
    'promo6.jpg',
    'promo7.jpg'
  ];
  final List colorList = [
    // Pallete.primaryColor,
    // Colors.teal,
    Colors.blue,
    Colors.teal,
    // Colors.red,
    Colors.teal,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Constant.HALF_PADDING_VIEW,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
              Constant.PADDING_VIEW, Constant.HALF_PADDING_VIEW - 5, 0, 0),
          child: TextWidget(
            text: "Offers for you",
            fontSize: Constant.HINT_TEXT_FONT,
            fontColor: Pallete.textColor,
            fontFamily: Constant.ROBOTO_BOLD,
          ),
        ),
        SizedBox(
          height: Constant.HALF_PADDING_VIEW,
        ),
        Container(
          // color: Pallete.primaryColor,
          // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: Card(
                      color: colorList[index],
                      child: Container(
                        child: FittedBox(
                          fit: index >= 1 ? BoxFit.fill : BoxFit.contain,
                          child: Image.asset(
                            '${Constant.PATH_IMAGE}/${images[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ));
              }),
        ),
      ],
    );
  }
}
