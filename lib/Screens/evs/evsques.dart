

class EvsQuestion {
  final String evsquestionText;
  final List<EvsAnswer> evsanswerList;

  EvsQuestion(this.evsquestionText, this.evsanswerList);
}

class EvsAnswer {
  final String evsanswerText;
  final bool isCorrect;

  EvsAnswer(this.evsanswerText, this.isCorrect);
}

List<EvsQuestion> getEvsQuestion() {
  List<EvsQuestion> list = [];

  list.add(EvsQuestion(
    " Clove is which part of the plant?",
    [
      EvsAnswer("Flower Bird", true),
      EvsAnswer("Caylex", false),
      EvsAnswer("fruit", false),
      EvsAnswer("Inflorescence", false),
    ],
  ));

  list.add(EvsQuestion(
    " Clove is which part of the plant?",
    [
      EvsAnswer("Flower Bird", true),
      EvsAnswer("Caylex", false),
      EvsAnswer("fruit", false),
      EvsAnswer("Inflorescence", false),
    ],
  ));

  list.add(EvsQuestion(
    " Clove is which part of the plant?",
    [
      EvsAnswer("Flower Bird", true),
      EvsAnswer("Caylex", false),
      EvsAnswer("fruit", false),
      EvsAnswer("Inflorescence", false),
    ],
  ));

  list.add(EvsQuestion(
    " Clove is which part of the plant?",
    [
      EvsAnswer("Flower Bird", true),
      EvsAnswer("Caylex", false),
      EvsAnswer("fruit", false),
      EvsAnswer("Inflorescence", false),
    ],
  ));



  return list;
}
