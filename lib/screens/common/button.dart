import 'package:demo_bv/screens/common/app_colors.dart';
import 'package:demo_bv/screens/common/extension.dart';
import 'package:demo_bv/screens/common/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  final buttonName;

  const Button({super.key, this.buttonName = ""});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.snackbar("Test Title", "Test Message",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.amber,
            icon: const Icon(Icons.add_a_photo),
            margin: const EdgeInsets.all(20));

        Navigator.pushNamedAndRemoveUntil(
            context, "/home", (Route<dynamic> route) => false);
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: hexColor(AppColors.colorPrimary),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: CustomTextWidget(
            msg: buttonName,
            textColor: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}