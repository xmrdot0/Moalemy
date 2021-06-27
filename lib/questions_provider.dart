import 'package:flutter/material.dart';
import 'package:moalemy/question_model.dart';
import 'package:moalemy/questions_data.dart';

class QuestionsProvider extends ChangeNotifier{

  int maxScore = questions.length;
  int currentScore = 0;
  bool correct = false;
  int currentIndex = -1;


  void changeIndex(){
    if (currentIndex < questions.length - 1) {
      currentIndex += 1;
      notifyListeners();
    }
  }

  void incrementScore(){
    currentScore++;
  }
}