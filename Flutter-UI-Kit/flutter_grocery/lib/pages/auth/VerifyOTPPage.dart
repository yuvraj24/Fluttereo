import 'package:flutter/material.dart';
import 'package:flutter_grocery/util/Constant.dart';
import 'package:flutter_grocery/util/Pallete.dart';
import 'package:flutter_grocery/util/Router.dart';
import 'package:flutter_grocery/widgets/ButtonWidget.dart';
import 'package:flutter_grocery/widgets/TextAppBar.dart';
import 'package:flutter_grocery/widgets/TextWidget.dart';

class VerifyOTPPage extends StatefulWidget {
  @override
  _VerifyOtpPageState createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOTPPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        centerTitle: false,
        title: TextAppBar(text: Constant.VERIFY_OTP),
      ),
      body: SafeArea(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Padding(
            padding: const EdgeInsets.all(Constant.PADDING_VIEW),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                TextWidget(
                  text: Constant.VERIFY_NUMBER,
                  fontColor: Pallete.textColor,
                  fontSize: Constant.MEDIUM_TEXT_FONT,
                  fontFamily: Constant.ROBOTO_BOLD,
                ),
                SizedBox(
                  height: 30,
                ),
                TextWidget(
                  text: Constant.HINT_ENTER_CODE,
                  fontColor: Pallete.textSubTitle,
                  fontSize: Constant.TEXT_FONT,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: Constant.DUMMY_MOBILE_EXAMPLE,
                  fontColor: Pallete.textColor,
                  fontSize: Constant.TEXT_FONT,
                  fontFamily: Constant.ROBOTO_MEDIUM,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      maxLength: 4,
                      style: TextStyle(
                          fontSize: Constant.TEXT_FONT,
                          color: Pallete.textColor),
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.phone_iphone,
                            color: Pallete.primaryColor,
                          ),
                          hintText: Constant.HINT_OTP_EXAMPLE,
                          hintStyle: TextStyle(
                              fontSize: Constant.TEXT_FONT,
                              fontFamily: Constant.ROBOTO_REGULAR),
                          alignLabelWithHint: true,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: Constant.HINT_OTP_NUMBER,
                          labelStyle: TextStyle(
                              color: Pallete.primaryColor,
                              fontSize: Constant.HINT_TEXT_FONT)),
                      validator: (value) {
                        if (value.isEmpty) {
                          return Constant.INVALID_OTP_CODE;
                        }
                        return null;
                      },
                      cursorColor: Pallete.primaryColor,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: TextWidget(
                      text: Constant.RESEND_CODE,
                      fontColor: Pallete.primaryColor,
                      fontSize: Constant.TEXT_FONT,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, Constant.PADDING_VIEW),
            child: ButtonWidget(
              text: Constant.CONTINUE,
              fontSize: 20,
              buttonColor: Pallete.primaryColor,
              onPress: () {
                if (_formKey.currentState.validate()) {
                  // Navigator.of(context).pushNamed(Router.TABS);
                  Navigator.pushNamedAndRemoveUntil(
                      context, Router.TABS, ModalRoute.withName(Router.TABS));
                }
              },
            ),
          ),
        ]),
      ),
    );
  }
}
