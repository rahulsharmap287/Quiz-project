

class CQuestion {
  final String cquestionText;
  final List<CAnswer> canswerList;

  CQuestion(this.cquestionText, this.canswerList);
}

class CAnswer {
  final String canswerText;
  final bool isCorrect;

  CAnswer(this.canswerText, this.isCorrect);
}

List<CQuestion> getCQuestion() {
  List<CQuestion> list = [];

  list.add(CQuestion(
    " j vfchryvuhy?",
    [
      CAnswer("ygitugtvuruy", false),
      CAnswer("byvitutvitut7t", false),
      CAnswer("uhbiutg", false),
      CAnswer("uytvutuytvyutu", false),
    ],
  ));
  list.add(CQuestion(
    " Clove is which part of the plant?",
    [
      CAnswer("Caylex", false),
      CAnswer("fruit", false),
      CAnswer("Inflorescence", false),
      CAnswer("Inflorescence", false),
    ],
  ));
  list.add(CQuestion(
    " Clove is which part of the plant?",
    [
      CAnswer("Caylex", false),
      CAnswer("fruit", false),
      CAnswer("Inflorescence", false),
      CAnswer("Inflorescence", false),
    ],
  ));
  list.add(CQuestion(
    " Clove is which part of the plant?",
    [
      CAnswer("Caylex", false),
      CAnswer("fruit", false),
      CAnswer("Inflorescence", false),
      CAnswer("Inflorescence", false),
    ],
  ));



  return list;
}
