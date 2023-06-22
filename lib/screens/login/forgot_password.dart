import 'package:demo_bv/screens/common/text_widget.dart';
import 'package:flutter/material.dart';

import '../common/button.dart';
import 'login_field.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputWrapperWidget();
}

class _InputWrapperWidget extends State<ForgotPassword> {
  var _name = "Forgot Password?";
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: LoginField(),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _name = "Forgot Password Click";
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    msg: _name,
                    textColor: Colors.grey,
                    fontSize: 15,
                    isBold: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Button(
              buttonName: "Sign In",
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
