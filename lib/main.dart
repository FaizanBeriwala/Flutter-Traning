import 'package:demo_bv/screens/autism/ui/splash.dart';
import 'package:demo_bv/screens/home/home.dart';
import 'package:demo_bv/screens/list/ui/learnerlist.dart';
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
      initialRoute: "/splash",
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/splash':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => SplashScreen(),
              );
            }
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
                builder: (BuildContext context) => const HomeScreen(),
              );
            }
          case '/register':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const RegisterScreen(),
              );
            }
          case '/learnerList':
            {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const LearnerList(),
              );
            }
        }
        return null;
      },
    );
  }
}