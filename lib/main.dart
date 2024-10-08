import 'package:flutter/material.dart';
import 'package:quiz_application/utils/cont/color_constants.dart';
import 'package:quiz_application/view/question%20_screen/question_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ColorConstants.primaryblack),
      debugShowCheckedModeBanner: false,
      home: QuestionScreen(),
    );
  }
}
