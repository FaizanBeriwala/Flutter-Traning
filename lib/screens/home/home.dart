import 'package:flutter/material.dart';

import '../list/ui/learnerlist.dart';
import '../main/navigation.dart';

final drawerState = GlobalKey<ScaffoldState>();

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentState = 0;
  final tabs = [
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
    return Scaffold(
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
                Navigator.pop(context);
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
      body: tabs[_currentState],
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
    );
  }
}