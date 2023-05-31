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
    learnerList.clear();
    for (var i = 0; i < 10; i++) {
      learnerList.add(LearnerModel(
          name: "Tome Curse",
          gender: "Male",
          age: "22 Years",
          date: "10/april/2023 To 23/april/2023",
          DOB: "31-jan-2023",
          subscriptionTime: "2 Months Plan",
          expireText: "Active",
          expireColor: Colors.green,
          imagePath: "assets/images/person.png"));
    }

    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.cyan,
        //   centerTitle: true,
        //   elevation: 0,
        //   title: const Text("Learners"),
        // ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: learnerList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(
                              learnerList[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                msg: learnerList[index].name,
                                textColor: Colors.black,
                                fontSize: 20,
                                isBold: false,
                                textPadding: 3,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    CustomTextWidget(
                                      msg: learnerList[index].gender,
                                      textColor: Colors.black,
                                      fontSize: 10,
                                      isBold: false,
                                      textPadding: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        thickness: 1,
                                        width: 2,
                                      ),
                                    ),
                                    CustomTextWidget(
                                      msg: learnerList[index].age,
                                      textColor: Colors.black,
                                      fontSize: 10,
                                      isBold: false,
                                      textPadding: 3,
                                    )
                                  ],
                                ),
                              ),
                              CustomTextWidget(
                                msg: "DOB : ${learnerList[index].DOB}",
                                textColor: Colors.black,
                                fontSize: 12,
                                isBold: false,
                                textPadding: 3,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
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
                        msg: "#UserId ${learnerList[index].subscriptionTime}",
                        textColor: Colors.blue,
                        fontSize: 15,
                        isBold: false,
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
