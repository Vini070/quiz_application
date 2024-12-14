import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

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
        SizedBox(
          height: 51.19,
          width: 303,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'START QUIZ',
              style: TextStyle(
                color: Color(0xff01356B),
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    ));
  }
}