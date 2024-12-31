import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questios.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;


  void answerQuestion(){

    setState(() {
      // currentQuestionIndex = currentQuestionIndex +1;
      //  currentQuestionIndex +=1;
      currentQuestionIndex++;
    });

  }

  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[currentQuestionIndex];

    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
              style: const TextStyle(
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            })
            // AnswerButton(answerText: currentQuestion.answers[0],
            //     onTap: (){}),
            // AnswerButton(answerText: currentQuestion.answers[1],
            //     onTap: (){}),
            // AnswerButton(answerText: currentQuestion.answers[2],
            //     onTap: (){}),
            // AnswerButton(answerText: currentQuestion.answers[3],
            //     onTap: (){}),

        ],),
      ),
    );
  }
}
