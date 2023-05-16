import 'package:demo_bv/screens/home/home.dart';
import 'package:demo_bv/screens/login/login_screen.dart';
import 'package:demo_bv/screens/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   "/login": (context) => LoginScreen(),
      //   "/register": (context) => Register_Screen(),
      // },
      initialRoute: "/login",
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/login':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => LoginScreen(),
              );
            }
          case '/home':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const Home_Screen(),
              );
            }
          case '/register':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const Register_Screen(),
              );
            }
        }
      },
    );
  }
}
