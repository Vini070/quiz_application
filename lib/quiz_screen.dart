import 'package:flutter/material.dart';
import 'package:quiz_application/components/custom_elevated_button.dart';
import 'package:quiz_application/models/quiz_question.dart';
import 'package:quiz_application/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onQuizComplete});

  final void Function() onQuizComplete;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> answers = [];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[index];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 364,
            height: 114,
            child: Text(
              currentQuestion.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // const Gap(80),
          ...currentQuestion.answers.map((String value) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CustomElevatedButton(
                value,
                onTap: () {
                  answers.add(value);
                  if (questions.length > index + 1) {
                    setState(() {
                      index++;
                    });
                  } else {
                    widget.onQuizComplete();
                  }
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}