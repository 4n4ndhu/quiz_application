import 'package:flutter/material.dart';
import 'package:quiz_application/dummy_db.dart';
import 'package:quiz_application/utils/cont/color_constants.dart';
import 'package:quiz_application/view/category_screen/category_screen.dart';


class ResultScreen extends StatefulWidget {
  final int answercount;
  const ResultScreen({super.key, required this.answercount});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  calculatePercentage() {
    var percentage = (widget.answercount / DummyDb.questionLis.length) * 100;
    if (percentage >= 80) {
      starcount = 2;
    } else if (percentage >= 50) {
      starcount = 1;
    } else if (percentage >= 30) {
      starcount = 0;
    } else {
      starcount = null;
    }
  }

  var starcount = null;
  @override
  void initState() {
    calculatePercentage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: index == 1 ? 50 : 20,
                    ),
                    child: Icon(Icons.star,
                        size: index == 1 ? 80 : 50,
                        color: index <= starcount
                            ? ColorConstants.starColor
                            : Colors.grey),
                  ),
                )),
            SizedBox(height: 20),
            Text(
              "Congratulations",
              style: TextStyle(
                  fontSize: 26,
                  color: ColorConstants.starColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text("Your score",
                style: TextStyle(
                  color: ColorConstants.primarywhite,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "6 / 13",
              style: TextStyle(
                  color: ColorConstants.starColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.primarywhite,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstants.primaryblack,
                    radius: 15,
                    child: Icon(
                      Icons.replay,
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Retry",
                    style: TextStyle(
                        color: ColorConstants.primaryblack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
