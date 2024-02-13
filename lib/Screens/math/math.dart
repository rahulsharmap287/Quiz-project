
import 'package:flutter/material.dart';

import 'mathques.dart';

class MthQuizScreen extends StatefulWidget {
  @override
  State<MthQuizScreen> createState() => _MthQuizScreenState();
}

class _MthQuizScreenState extends State<MthQuizScreen> {
  List<MthQuestion> mthquestionList = getMthQuestion();
  int currentmthQuestionIndex = 0;
  int score = 0;
  MthAnswer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,appBar: AppBar( title: Text("Math"),backgroundColor: Colors.green,),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Simple Quiz App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          _mthquestionWidget(),
          _mthanswerList(),
          _mthnextButton(),
        ]),
      ),
    );
  }

  _mthquestionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentmthQuestionIndex + 1}/${mthquestionList.length.toString()}",
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
            mthquestionList[currentmthQuestionIndex].mthquestionText,
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

  _mthanswerList() {
    return Column(
      children: mthquestionList[currentmthQuestionIndex]
          .mthanswerList
          .map(
            (e) => _mthanswerButton(e),
      )
          .toList(),
    );
  }

  Widget _mthanswerButton(MthAnswer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.mthanswerText),
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

  _mthnextButton() {
    bool isLastQuestion = false;
    if (currentmthQuestionIndex == mthquestionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.blueAccent,
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
              currentmthQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= mthquestionList.length * 0.6) {
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
            currentmthQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}