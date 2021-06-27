import 'dart:ffi';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:moalemy/questions_data.dart';
import 'package:moalemy/questions_provider.dart';
import 'package:provider/provider.dart';
import 'PrimWrap.dart';



CountDownController controller = CountDownController();

Color rightAnswerColor = Colors.green;
Color wrongAnswerColor = Colors.red;
Color currentColor = Color((0xFFDB7E66));

//ANSWER WIDGET

class AnswerWidget extends StatefulWidget {
  String answer;
  BuildContext context;
  String correctAnswer;
  CountDownController controller;
  Color color=currentColor;

  AnswerWidget({this.correctAnswer,this.answer,this.context,this.controller});

  @override
  _AnswerWidgetState createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.color,
          ),
          child: InkWell(
            onTap: () {
              if (widget.correctAnswer == widget.answer) {
                setState(() {
                  widget.color = rightAnswerColor;
                });
                Provider.of<QuestionsProvider>(context, listen: false)
                    .incrementScore();
                print("SAAA7");
              } else {
                setState(() {
                  widget.color = wrongAnswerColor;
                });
                print("LAAAA2");
              }
              controller.pause();
              Future.delayed(const Duration(milliseconds: 600), () {
                controller.start();
              });
            },
            child: Text(
              widget.answer,
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


}


