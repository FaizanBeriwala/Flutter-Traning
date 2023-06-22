import 'package:demo_bv/screens/common/app_colors.dart';
import 'package:flutter/material.dart';

import '../common/extension.dart';
import '../common/text_widget.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/login_image.png',
                  ),
                  Positioned(
                    bottom: 30,
                    left: 40,
                    right: 40,
                    child: CustomTextWidget(
                      msg: "Login",
                      textColor: hexColor(AppColors.colorPrimary),
                      fontSize: 35,
                      isBold: true,
                      textPadding: 5,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 40,
                    right: 40,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomTextWidget(
                            msg: "Already have an account?",
                            textColor: Colors.grey,
                            fontSize: 15,
                            isBold: false,
                            textPadding: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/register");
                            },
                            child:  CustomTextWidget(
                              msg: "SignUp?",
                              textColor: hexColor(AppColors.colorPrimary),
                              fontSize: 15,
                              isBold: true,
                              textPadding: 5,
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              ForgotPassword(),
            ],
          ),
        ),
      ),
    );
  }
}
