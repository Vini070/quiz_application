class QuizQuestion {
  String question;
  List<String> answers;

  QuizQuestion({required this.question, required this.answers});

  List<String> shuffledAnswers() {
    List<String> shuffledAnswers = List.from(answers);

    shuffledAnswers.shuffle();

    return shuffledAnswers;
  }
}