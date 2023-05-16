import 'package:demo_bv/screens/register/register_field.dart';
import 'package:flutter/material.dart';

import '../home/header_auth.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

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
              height: 20,
            ),
            const HeaderAuth(
              headerName: "Register",
              isBackShow: true,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: RegisterField(),
            ))
          ],
        ),
      ),
    );
  }
}
