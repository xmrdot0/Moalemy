import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:moalemy/questions_provider.dart';
import 'package:moalemy/quiz_screen.dart';
import 'package:moalemy/welcome.dart';
import 'package:moalemy/finish.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>QuestionsProvider(),
      child: MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: welcome(),
        routes: {'/h': (context) => QuizScreen(), '/f': (context) => ScoreScreen()},
      ),
    );
  }
}
