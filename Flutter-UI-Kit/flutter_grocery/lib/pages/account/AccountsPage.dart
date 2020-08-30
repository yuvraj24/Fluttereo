import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/grocery_list/detail/GroceryProductDescription.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/ButtonWidget.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class AccountsPage extends StatefulWidget {
  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Pallete.appBgColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, Constant.PADDING_VIEW),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  Constant.PADDING_VIEW,
                  Constant.PADDING_VIEW,
                  Constant.PADDING_VIEW,
                  Constant.PADDING_VIEW / 2),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://avatars3.githubusercontent.com/u/24696317?s=460&u=a1a5138396b9013e53f1ea0d04d19739c5f26650&v=4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Constant.PADDING_VIEW),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: Constant.USER_NAME,
                          fontColor: Pallete.textColor,
                          fontSize: Constant.APP_BAR_TEXT_FONT,
                          fontFamily: Constant.ROBOTO_MEDIUM,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextWidget(
                            text: Constant.DUMMY_MOBILE_EXAMPLE,
                            fontColor: Pallete.textSubTitle,
                            fontSize: Constant.TEXT_FONT,
                            fontFamily: Constant.ROBOTO_MEDIUM,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Constant.PADDING_VIEW, 0, Constant.PADDING_VIEW, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            GroceryProductDescription(
                title: "Profile Settings",
                description: "Change Your Basic Profile"),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Constant.PADDING_VIEW, 0, Constant.PADDING_VIEW, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            GroceryProductDescription(
                title: "My Address", description: "Change Address Settings"),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Constant.PADDING_VIEW, 0, Constant.PADDING_VIEW, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            GroceryProductDescription(
                title: "Help & Support", description: "Get Support From Us"),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  Constant.PADDING_VIEW, 0, Constant.PADDING_VIEW, 0),
              // child: Divider(
              //   thickness: 1,
              // ),
            ),
            SizedBox(
              height: Constant.PADDING_VIEW,
            ),
            ButtonWidget(
                text: "Logout",
                buttonColor: Pallete.primaryColor,
                fontSize: Constant.HINT_TEXT_FONT,
                onPress: () => Navigator.pushNamedAndRemoveUntil(context,
                    Router.LANDING, ModalRoute.withName(Router.LANDING)))
          ],
        ),
      ),
    );
  }
}
