import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String msg;
  final Color textColor;
  final int fontSize;
  final bool isBold;
  final double textPadding;

  const CustomTextWidget(
      {this.msg = 'Hello',
      super.key,
      this.textColor = Colors.red,
      this.fontSize = 10,
      this.isBold = false,
      this.textPadding = 10});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(textPadding),
        child: Text(
          msg,
          style: TextStyle(
            fontSize: fontSize.toDouble(),
            color: textColor,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            letterSpacing: isBold ? 5.0 : 0,
          ),
          textAlign: TextAlign.center,
        ));
  }
}