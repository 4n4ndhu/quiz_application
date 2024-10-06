import 'package:flutter/material.dart';
import 'package:quiz_application/dummy_db.dart';

import 'package:quiz_application/utils/cont/color_constants.dart';
import 'package:quiz_application/view/result_screen/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  dynamic currentIndex = 0;
  int length = DummyDb.questionLis.length;
  int currentQuestion = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryblack,
        actions: [
          Text(
            "${currentIndex + 1} / $length",
            style: TextStyle(color: ColorConstants.primarywhite),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    DummyDb.questionLis[currentIndex]["question"],
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: ColorConstants.primarywhite),
                  ),
                ),
                decoration: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Column(
                children: List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.primarygrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DummyDb.questionLis[currentIndex]["options"][index],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: ColorConstants.primarywhite),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: ColorConstants.primarygrey,
                      )
                    ],
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {});
                if (currentIndex < length - 1) {
                  currentIndex++;
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(),
                      ));
                }
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.primaryred),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: ColorConstants.primarywhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
