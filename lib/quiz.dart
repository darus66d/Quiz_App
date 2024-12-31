import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  final List<String> selectedAnswers = [];


  var activeScreen = "start-Screen";

  void switchScreen (){
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen=StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen (){
  //   setState(() {
  //     activeScreen =  const QuestionScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "questions-screen"){
      screenWidget = QuestionScreen(onSelectAnswer : chooseAnswer);
    }

    // final screenWidget = activeScreen=="start-screen"
    //    ?StartScreen(switchScreen):const QuestionsScreen();

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Color.fromARGB(255, 78, 13, 151),
                    Color.fromARGB(255, 107, 15, 168),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
              ),
            child: screenWidget,

            //   child: activeScreen=="start-screen"
            // ?StartScreen(switchScreen):const QuestionsScreen(),
          ),
        )
    );
  }
}
