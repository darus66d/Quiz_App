import 'package:quiz_app/models/quiz_questions.dart';

var questions = [
  QuizQuestions(
    "what are the main building blocks of Flutter UI's?",
    [" widgets", "components", "Blocks", "Functions"],),
  QuizQuestions(
  "How are Flutters UIs Build",
    [
      "By combings widgets in code",
      "By Combing widgets in a visual editor",
      "By defining widgets in config files",
      "By using Xcode For iOS and Android studio for Android"
    ],),
 QuizQuestions(
  "What's the purpose of a StateFulWidget?",
    [
      "Update UI as a data Changes",
      "Update Data as a UI Changes",
      "Ignore data Changes",
      "Render UI that does not depend on data"
    ],),
  QuizQuestions(
  "Which widget should you try to use more often: StatelessWidget or StateFulWidget?",
    [
      "StateLessWidget",
      "StateFulWidget",
      "Both are Equally Good",
      "None of the above"
    ],),
  QuizQuestions(
  "What happens if you change data in a StateLessWidget?",
    [
      "The UI is not Updated",
      "The UI is Updated",
      "The closet StateFulWidget is updated",
      "Any Nested StatefulWidget is Updated"
    ],),
  QuizQuestions(
  "How should you upadte data inside of statefulwidgets?",
    [
      "by calling setState()",
      "by calling updateData()",
      "by calling upateUI()",
      "by calling updateState()"
    ],),


];
