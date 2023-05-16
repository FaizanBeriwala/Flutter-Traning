import 'package:demo_bv/screens/home/header_auth.dart';
import 'package:flutter/material.dart';

import '../common/text_widget.dart';
import '../main/navigation.dart';

final drawerState = GlobalKey<ScaffoldState>();


class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

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
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.login_outlined))
        ],
      ),
      drawer: CustomNavigationWidget(
        drawerState: drawerState,
      ),
      body: const Center(
        child: CustomTextWidget(
          msg: "Hello World",
          fontSize: 20,
          textColor: Colors.cyan,

        ),
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
