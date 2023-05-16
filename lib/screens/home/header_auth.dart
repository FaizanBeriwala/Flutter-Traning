import 'package:demo_bv/screens/common/text_widget.dart';
import 'package:flutter/material.dart';

class HeaderAuth extends StatelessWidget {
  final String headerName;
  final bool isBackShow;

  const HeaderAuth({super.key, this.headerName = "", this.isBackShow = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: isBackShow
                      ? const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )
                      : const Icon(null))),
          Center(
            child: CustomTextWidget(
                msg: headerName, textColor: Colors.white, fontSize: 40),
          ),
        ],
      ),
    );
  }
}
