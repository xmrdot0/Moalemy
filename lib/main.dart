import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:moalemy/quiz_screen.dart';
import 'package:moalemy/welcome.dart';
import 'package:moalemy/finish.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: welcome(),
      routes: {'/h': (context) => QuizScreen(), '/f': (context) => finish()},
    );
  }
}
