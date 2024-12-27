import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {


  var activeScreen = "start-Screen";

  void switchScreen (){
    setState(() {
      activeScreen = "question-screen";
    });
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
              child: activeScreen,
          ),
        )
    );
  }
}
