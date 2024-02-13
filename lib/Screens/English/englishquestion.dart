class EngQuestion {
  final String engquestionText;
  final List<EngAnswer> enganswersList;

  EngQuestion(this.engquestionText, this.enganswersList);
}

class EngAnswer {
  final String enganswerText;
  final bool isCorrect;

  EngAnswer(this.enganswerText, this.isCorrect);
}

List<EngQuestion> getEngQuestions() {
  List<EngQuestion> list = [];
  //ADD questions and answer here

  list.add(EngQuestion(
    "Spill the beans ?",
    [
      EngAnswer("waste Money ", false),
      EngAnswer("Waste money", false),
      EngAnswer("  Give away a secret ", true),
      EngAnswer("Perform magic", false),
    ],
  ));

  list.add(EngQuestion(
    "Lend an ear ?",
    [
      EngAnswer("to pay attention to", true),
      EngAnswer("to not make trouble ", false),
      EngAnswer("to force someone to listen", false),
      EngAnswer("to not tell someone something", false),
    ],
  ));

  list.add(EngQuestion(
    "	Pie in the sky ?",
    [
      EngAnswer("Something went Smell", false),
      EngAnswer(" Apsara ", false),
      EngAnswer("Live Streaming", false),
      EngAnswer("Something is Possible", true),
    ],
  ));

  list.add(EngQuestion(
    "	Eye-wash ?",
    [
      EngAnswer("A deception", true),
      EngAnswer("inspiration", false),
      EngAnswer("operation", false),
      EngAnswer("consideration", false),
    ],
  ));
  list.add(EngQuestion(
    "Who is apple 	",
    [
      EngAnswer("Fruit", true),
      EngAnswer("Animal", false),
      EngAnswer("Banana", false),
      EngAnswer("Yogi", false),
    ],
  ));

  return list;
}