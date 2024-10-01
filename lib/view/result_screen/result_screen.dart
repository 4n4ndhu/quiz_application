import 'package:flutter/material.dart';
import 'package:quiz_application/utils/cont/color_constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 150,
              width: 220,
              child: Column(
                children: [
                  Icon(
                    Icons.star,
                    size: 70,
                    color: ColorConstants.starColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        size: 50,
                        color: ColorConstants.starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 50,
                        color: ColorConstants.starColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Text(
            "Congratulations",
            style: TextStyle(
                fontSize: 25,
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
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 250,
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
    );
  }
}
