class ItQuestion {
  final String itquestionText;
  final List<ItAnswer> itanswerList;

  ItQuestion(this.itquestionText, this.itanswerList);
}

class ItAnswer {
  final String itanswerText;
  final bool isCorrect;

  ItAnswer(this.itanswerText, this.isCorrect);
}

List<ItQuestion> getItQuestion() {
  List<ItQuestion> list = [];

  list.add(ItQuestion(
    " Clove is which part of the plant?",
    [
      ItAnswer("Flower Bird", true),
      ItAnswer("Caylex", false),
      ItAnswer("fruit", false),
      ItAnswer("Inflorescence", false),
    ],
  ));
  list.add(ItQuestion(
    " Clove is which part of the plant?",
    [
      ItAnswer("Flower Bird", true),
      ItAnswer("Caylex", false),
      ItAnswer("fruit", false),
      ItAnswer("Inflorescence", false),
    ],
  ));
  list.add(ItQuestion(
    " Clove is which part of the plant?",
    [
      ItAnswer("Flower Bird", true),
      ItAnswer("Caylex", false),
      ItAnswer("fruit", false),
      ItAnswer("Inflorescence", false),
    ],
  ));
  list.add(ItQuestion(
    " Clove is which part of the plant?",
    [
      ItAnswer("Flower Bird", true),
      ItAnswer("Caylex", false),
      ItAnswer("fruit", false),
      ItAnswer("Inflorescence", false),
    ],
  ));

  return list;
}
