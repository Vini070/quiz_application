import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_application/components/custom_elevated_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'QUIZ TIME',
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
        const Gap(37),
        Image.asset(
          'assets/images/quiz.png',
          width: 300,
          height: 300,
        ),
        const Gap(83),
        const CustomElevatedButton('Start Quiz'),
      ],
    ));
  }
}