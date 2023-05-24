import 'package:flutter/material.dart';

import '../../common/text_widget.dart';
import 'learner_model.dart';

class LearnerList extends StatefulWidget {
  const LearnerList({super.key});

  @override
  State<StatefulWidget> createState() => LearnerWidget();
}

List<LearnerModel> learnerList = [];

class LearnerWidget extends State<LearnerList> {
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 10; i++) {
      learnerList.add(LearnerModel(
          name: "Tome Curse",
          gender: "Male",
          age: "22Years",
          date: "10/april/2023 To 23/april/2023",
          DOB: "31-jan-2023",
          subscriptionTime: "2 months Plan",
          expireText: "Active",
          expireColor: Colors.green,
          imagePath: "assets/images/person.png"));
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          elevation: 0,
          title: const Text("Learners"),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: learnerList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/register");
              },
              child: Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              learnerList[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            constraints: const BoxConstraints(minWidth: 80),
                            decoration: BoxDecoration(
                                color: learnerList[index].expireColor,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5))),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Center(
                                child: CustomTextWidget(
                                  msg: learnerList[index].expireText,
                                  textColor: Colors.white,
                                  fontSize: 10,
                                  isBold: false,
                                  textPadding: 2,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomTextWidget(
                        msg: "#UserId${learnerList[index].subscriptionTime}",
                        textColor: Colors.cyan,
                        fontSize: 15,
                        isBold: true,
                        textPadding: 5,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
