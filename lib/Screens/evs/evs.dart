
import 'package:flutter/material.dart';

import 'evsques.dart';

class EvsQuizScreen extends StatefulWidget {
  @override
  State<EvsQuizScreen> createState() => _EvsQuizScreenState();
}

class _EvsQuizScreenState extends State<EvsQuizScreen> {
  List<EvsQuestion> evsquestionList = getEvsQuestion();
  int currentevsQuestionIndex = 0;
  int score = 0;
  EvsAnswer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),appBar: AppBar( title: Text("Environment"),backgroundColor: Colors.green),
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
          _evsquestionWidget(),
          _evsanswerList(),
          _evsnextButton(),
        ]),
      ),
    );
  }

  _evsquestionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentevsQuestionIndex + 1}/${evsquestionList.length.toString()}",
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
            evsquestionList[currentevsQuestionIndex].evsquestionText,
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

  _evsanswerList() {
    return Column(
      children: evsquestionList[currentevsQuestionIndex]
          .evsanswerList
          .map(
            (e) => _evsanswerButton(e),
      )
          .toList(),
    );
  }

  Widget _evsanswerButton(EvsAnswer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.evsanswerText),
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

  _evsnextButton() {
    bool isLastQuestion = false;
    if (currentevsQuestionIndex == evsquestionList.length - 1) {
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
              currentevsQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= evsquestionList.length * 0.6) {
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
            currentevsQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}