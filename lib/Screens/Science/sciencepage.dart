import 'package:flutter/material.dart';
import 'package:quizyy/Screens/Science/sciencequestion.dart';

class Science extends StatefulWidget {
  const Science({super.key});

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  List<Question> questionList = getQuestion();
  int currentQuestionIndex = 0;
  int Score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Science '),backgroundColor: Colors.green,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Your MCQ is Here",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              _questionWidget(),
              _answerList(),
              _nextButton(),
            ],
          ),
        ));
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              questionList[currentQuestionIndex].questionText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ))
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              Score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestionIndex = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestionIndex = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestionIndex ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black),
        onPressed: () {
          if (isLastQuestionIndex) {
            showDialog(context: context, builder: (_)=> _showScoreDialog());


          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }
  _showScoreDialog(){
    bool isPassed = false;
    if(Score >= questionList.length * 0.6){
       isPassed = true;
    }
    String title = isPassed? "Passed" : "Failed";
    return AlertDialog(
      title: Text(title + " | Score is $Score",),
    );
  }
}
