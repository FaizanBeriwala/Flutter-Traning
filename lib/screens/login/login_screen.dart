import 'package:demo_bv/screens/common/app_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../common/extension.dart';
import '../common/text_widget.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      // var response = await Dio().get('https://protocoderspoint.com/jsondata/superheros.json');
      var response = await Dio()
          .post("https://aris4autism.demo.brainvire.dev/api/v1/signin", data: {
        'email': 'may2023@mailinator.com',
        'password': 'Test@123',
        'device_type': 'android',
        'device_token': 'abc'
      });
      if (response.statusCode == 200) {
        // success
        if (kDebugMode) {
          print(response.statusMessage);
          print(response.data.toString());
        }
      } else {
        // failure
        if (kDebugMode) {
          print(response.statusMessage);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

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
                            child: CustomTextWidget(
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
