

class MthQuestion {
  final String mthquestionText;
  final List<MthAnswer> mthanswerList;

  MthQuestion(this.mthquestionText, this.mthanswerList);
}

class MthAnswer {
  final String mthanswerText;
  final bool isCorrect;

  MthAnswer(this.mthanswerText, this.isCorrect);
}

List<MthQuestion> getMthQuestion() {
  List<MthQuestion> list = [];

  list.add(MthQuestion(
    " Clove is which part of the plant?",
    [
      MthAnswer("Flower Bird", true),
      MthAnswer("Caylex", false),
      MthAnswer("fruit", false),
      MthAnswer("Inflorescence", false),
    ],
  ));

  list.add(MthQuestion(
    " Which among the following is known as White Vitriol?",
    [
      MthAnswer(" Zinc Sulphate", true),
      MthAnswer(" Zinc Chloride", false),
      MthAnswer(" Zinc Phasphate", false),
      MthAnswer(" Zinc oxide", false),
    ],
  ));
  list.add(MthQuestion(
    "The pitcher plant is characterized by which of the following plants ?",
    [
      MthAnswer(" Autotrophes", false),
      MthAnswer(" Insectivorous", true),
      MthAnswer(" Allergen", false),
      MthAnswer(" None of the above", false),
    ],
  ));
  list.add(MthQuestion(
    "The pitcher plant is characterized by which of the following plants ?",
    [
      MthAnswer(" Autotrophes", false),
      MthAnswer(" Insectivorous", true),
      MthAnswer(" Allergen", false),
      MthAnswer(" None of the above", false),
    ],
  ));
  list.add(MthQuestion(
    "The pitcher plant is characterized by which of the following plants ?",
    [
      MthAnswer(" Autotrophes", false),
      MthAnswer(" Insectivorous", true),
      MthAnswer(" Allergen", false),
      MthAnswer(" None of the above", false),
    ],
  ));



  return list;
}
