

class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestion() {
  List<Question> list = [];

  list.add(Question(
    " Clove is which part of the plant?",
    [
      Answer("Flower Bird", true),
      Answer("Caylex", false),
      Answer("fruit", false),
      Answer("Inflorescence", false),
    ],
  ));

  list.add(Question(
    " Which among the following is known as White Vitriol?",
    [
      Answer(" Zinc Sulphate", true),
      Answer(" Zinc Chloride", false),
      Answer(" Zinc Phasphate", false),
      Answer(" Zinc oxide", false),
    ],
  ));
  list.add(Question(
    "The pitcher plant is characterized by which of the following plants ?",
    [
      Answer(" Autotrophes", false),
      Answer(" Insectivorous", true),
      Answer(" Allergen", false),
      Answer(" None of the above", false),
    ],
  ));
  list.add(Question(
    " What is the range of Strong Nuclear force?",
    [
      Answer(" NM ", false),
      Answer("Watt", false),
      Answer(" joule", true),
      Answer("No Units", false),
    ],
  ));

  return list;
}
