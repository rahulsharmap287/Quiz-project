

class CheQuestion {
  final String chequestionText;
  final List<CheAnswer> cheanswerList;

  CheQuestion(this.chequestionText, this.cheanswerList);
}

class CheAnswer {
  final String cheanswerText;
  final bool isCorrect;

  CheAnswer(this.cheanswerText, this.isCorrect);
}

List<CheQuestion> getCheQuestion() {
  List<CheQuestion> list = [];

  list.add(CheQuestion(
    " Clove is which part of the plant?",
    [
      CheAnswer("Flower Bird", true),
      CheAnswer("Caylex", false),
      CheAnswer("fruit", false),
      CheAnswer("Inflorescence", false),
    ],
  ));

  list.add(CheQuestion(
    " Which among the following is known as White Vitriol?",
    [
      CheAnswer(" Zinc Sulphate", true),
      CheAnswer(" Zinc Chloride", false),
      CheAnswer(" Zinc Phasphate", false),
      CheAnswer(" Zinc oxide", false),
    ],
  ));
  list.add(CheQuestion(
    " Clove is which part of the plant?",
    [
      CheAnswer("Flower Bird", true),
      CheAnswer("Caylex", false),
      CheAnswer("fruit", false),
      CheAnswer("Inflorescence", false),
    ],
  ));

  list.add(CheQuestion(
    " Which among the following is known as White Vitriol?",
    [
      CheAnswer(" Zinc Sulphate", true),
      CheAnswer(" Zinc Chloride", false),
      CheAnswer(" Zinc Phasphate", false),
      CheAnswer(" Zinc oxide", false),
    ],
  ));


  return list;
}
