import 'dart:ffi';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'PrimWrap.dart';

void alter(PrimitiveWrapper data) {
  data.value++;
}

CountDownController controller = CountDownController();
Color rightAnswerColor = Colors.green;
Color wrongAnswerColor = Colors.red;
Color currentColor = Color((0xFFDB7E66));
//ANSWER WIDGET
Widget buildAnswer(
    {String answer,
    int correctAnswerIndex,
    int choosenAnswerIndex,
    CountDownController controller,
    int currentIndex,
    PrimitiveWrapper prim}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Material(
      color: Colors.transparent,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentColor,
        ),
        child: InkWell(
          onTap: () {
            if (correctAnswerIndex == choosenAnswerIndex) {
              currentColor = rightAnswerColor;
              alter(prim);
              print("SAAA7");
            } else {
              currentColor = wrongAnswerColor;
              print("LAAAA2");
            }

            controller.start();
          },
          child: Text(
            answer,
            style: TextStyle(
              fontFamily: 'Arabic',
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
