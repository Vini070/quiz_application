import 'package:flutter/material.dart';
import 'package:quiz_application/components/custom_elevated_button.dart';
import 'package:quiz_application/models/quiz_question.dart';
import 'package:quiz_application/data/questions.dart';

// List<String> nameList = ['Jude', 'Jeevan', 'Krishanth', 'Vini'];
// nameList[0]  ==> Jude
// nameList[2]  ==> Krishanth

/* 

  for (int i = 0; i < nameList.length; i = i + 1) {
      print(printing namelist);
  }

  ....

  printing namelist
  printing namelist
  printing namelist
  printing namelist

  printName

  var name = 'Jude'
  var isAPerson = false

  void printName() {
    print(name);
  }

  void runAGivenFunction(Function தரப்பட்டFunction) {


      other code....

      தரப்பட்டFunction();

  }

  runAGivenFunction(() {
    print(name);
  });



  nameList.map((value) {
    print(value)
  })

*/

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[0];
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
              child: CustomElevatedButton(value),
            );
          }),
        ],
      ),
    );
  }
}