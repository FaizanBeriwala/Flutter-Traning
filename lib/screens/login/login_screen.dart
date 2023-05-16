import 'package:flutter/material.dart';

import '../home/header_auth.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.cyan.shade500,
          Colors.cyan.shade300,
          Colors.cyan.shade400
        ], begin: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const HeaderAuth(headerName: "Login", isBackShow: false,),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: ForgotPassword(),
            ))
          ],
        ),
      ),
    );
  }
}
