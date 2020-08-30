import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/modal/ParamType.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/ButtonWidget.dart';
import 'package:flutter_grocery/widgets/TextAppBar.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ParamType params = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        title: TextAppBar(text: params.title),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(Constant.PADDING_VIEW),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    TextWidget(
                      text: params.title == Constant.LOGIN
                          ? Constant.WELCOME_BACK
                          : Constant.GET_STARTED,
                      fontColor: Pallete.textColor,
                      fontSize: Constant.MEDIUM_TEXT_FONT,
                      fontFamily: Constant.ROBOTO_BOLD,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: params.title == Constant.LOGIN
                          ? Constant.ALREADY_HAVE_ACCOUNT
                          : Constant.TOP_PICKS,
                      fontColor: Pallete.textSubTitle,
                      fontSize: Constant.TEXT_FONT,
                      maxLines: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 15),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          maxLength: 10,
                          style:
                              TextStyle(fontSize: 18, color: Pallete.textColor),
                          decoration: InputDecoration(
                              hintText: Constant.HINT_MOBILE_EXAMPLE,
                              hintStyle: TextStyle(
                                  fontSize: Constant.TEXT_FONT,
                                  fontFamily: Constant.ROBOTO_REGULAR),
                              alignLabelWithHint: true,
                              // floatingLabelBehavior:
                              //     FloatingLabelBehavior.always,
                              labelText: Constant.HINT_MOBILE_NUMBER,
                              labelStyle: TextStyle(
                                  color: Pallete.primaryColor,
                                  fontSize: Constant.HINT_TEXT_FONT)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return Constant.INVALID_MOBILE_NUMBER;
                            }
                            return null;
                          },
                          cursorColor: Pallete.primaryColor,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                    TextWidget(
                      text: Constant.STANDARD_RATES_APPLY,
                      fontColor: Pallete.textSubTitle,
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ButtonWidget(
                  text: Constant.CONTINUE,
                  fontSize: 20,
                  buttonColor: Pallete.primaryColor,
                  onPress: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.of(context).pushNamed(Router.OTP);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
