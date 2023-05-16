import 'package:demo_bv/screens/common/text_widget.dart';
import 'package:flutter/material.dart';

class CustomNavigationWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerState;

  const CustomNavigationWidget({required this.drawerState, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            child: Center(
              child: CustomTextWidget(
                msg: "Hello Faizan",
                textColor: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {
                  drawerState.currentState?.closeDrawer();
                },
                icon: const Icon(Icons.add_call)),
            title: const Text("Contact Us"),
            onTap: () {
              drawerState.currentState?.closeDrawer();
            },
          ),
        ],
      ),
    );
  }
}
