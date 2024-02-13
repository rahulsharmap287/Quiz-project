

class PhyQuestion {
  final String phyquestionText;
  final List<PhyAnswer> phyanswerList;

  PhyQuestion(this.phyquestionText, this.phyanswerList);
}

class PhyAnswer {
  final String phyanswerText;
  final bool isCorrect;

  PhyAnswer(this.phyanswerText, this.isCorrect);
}

List<PhyQuestion> getPhyQuestion() {
  List<PhyQuestion> list = [];

  list.add(PhyQuestion(
    " Clove is which part of the plant?",
    [
      PhyAnswer("Flower Bird", true),
      PhyAnswer("Caylex", false),
      PhyAnswer("fruit", false),
      PhyAnswer("Inflorescence", false),
    ],
  ));

  list.add(PhyQuestion(
    " Which among the following is known as White Vitriol?",
    [
      PhyAnswer(" Zinc Sulphate", true),
      PhyAnswer(" Zinc Chloride", false),
      PhyAnswer(" Zinc Phasphate", false),
      PhyAnswer(" Zinc oxide", false),
    ],
  ));
  list.add(PhyQuestion(
    "The pitcher plant is characterized by which of the following plants ?",
    [
      PhyAnswer(" Autotrophes", false),
      PhyAnswer(" Insectivorous", true),
      PhyAnswer(" Allergen", false),
      PhyAnswer(" None of the above", false),
    ],
  ));
  list.add(PhyQuestion(
    " What is the range of Strong Nuclear force?",
    [
      PhyAnswer(" NM ", false),
      PhyAnswer("Watt", false),
      PhyAnswer(" joule", true),
      PhyAnswer("No Units", false),
    ],
  ));

  return list;
}
