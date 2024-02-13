
import 'package:flutter/material.dart';
import 'englishquestion.dart';

class EngQuizScreen extends StatefulWidget {
  @override
  State<EngQuizScreen> createState() => _EngQuizScreenState();
}

class _EngQuizScreenState extends State<EngQuizScreen> {
  List<EngQuestion> engquestionList = getEngQuestions();
  int currentengQuestionIndex = 0;
  int score = 0;
  EngAnswer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,appBar: AppBar( title: Text("English",),backgroundColor: Colors.green,),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "MCQ Is Here",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          _engquestionWidget(),
          _enganswerList(),
          _engnextButton(),
        ]),
      ),
    );
  }

  _engquestionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentengQuestionIndex + 1}/${engquestionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            engquestionList[currentengQuestionIndex].engquestionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _enganswerList() {
    return Column(
      children: engquestionList[currentengQuestionIndex]
          .enganswersList
          .map(
            (e) => _enganswerButton(e),
      )
          .toList(),
    );
  }

  Widget _enganswerButton(EngAnswer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.enganswerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.orangeAccent : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _engnextButton() {
    bool isLastQuestion = false;
    if (currentengQuestionIndex == engquestionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentengQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= engquestionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentengQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}