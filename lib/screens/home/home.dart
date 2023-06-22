import 'package:demo_bv/screens/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../list/ui/learnerlist.dart';
import '../login/login_screen.dart';
import '../main/navigation.dart';

final drawerState = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentState = 0;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final tabs = const [
    Center(
      child: LearnerList(),
    ),
    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("Camera"),
    ),
    Center(
      child: Text("Profile"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value =  await navigatorKey.currentState?.maybePop();
        return Future.value(!(value ?? false));
      },
      child: Scaffold(
        key: drawerState,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          elevation: 0,
          title: const Text("My App"),
          leading: IconButton(
              onPressed: () {
                drawerState.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/login", (Route<dynamic> route) => false);
                },
                icon: const Icon(Icons.login_outlined))
          ],
        ),
        drawer: CustomNavigationWidget(
            drawerState: drawerState,
            onItemTap: (index) {
              setState(() {
                _currentState = index;
              });
            }),
        // body: tabs[_currentState],
        body: Navigator(
          initialRoute: '/home',
          key: navigatorKey,
          onGenerateRoute: (settings) {
            debugPrint("CHECK_INDEX $_currentState");
            if (settings.name == '/home') {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const LearnerList(),
              );
            } else if (settings.name == '/search') {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => LoginScreen(),
              );
            } else if (settings.name == '/camera') {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const RegisterScreen(),
              );
            } else if (settings.name == '/profile') {
              return CupertinoPageRoute<bool>(
                fullscreenDialog: false,
                builder: (BuildContext context) => const LearnerList(),
              );
            }
            return null;
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentState,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.cyan,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.cyan),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.cyan),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "Camera",
                backgroundColor: Colors.cyan),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.cyan)
          ],
          onTap: (value) {
            setState(() {
              _currentState = value;
              switch (value) {
                case 0:
                  {
                    navigatorKey.currentState?.pushNamed("/home");
                    break;
                  }
                case 1:
                  {
                    navigatorKey.currentState?.pushNamed("/search");
                    break;
                  }
                case 2:
                  {
                    navigatorKey.currentState?.pushNamed("/camera");
                    break;
                  }
                case 3:
                  {
                    navigatorKey.currentState?.pushNamed("/profile");
                    break;
                  }
              }
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // showModalBottomSheet(context: context, builder: (context) => const Text('I am Bottom Sheet'));
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                builder: (BuildContext context) {
                  return ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Close"));
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}