import 'package:flutter/material.dart';
import 'package:moalemy/questions_provider.dart';
import 'package:provider/provider.dart';

class ScoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
              height: 675.1358,
              width: 354.7804,
              decoration: new BoxDecoration(
                color: Color(0xFF8C364E),
                borderRadius: BorderRadius.circular(37),
              ),
              child: Center(
                child: Text(
                  "الدرجة \n ${Provider.of<QuestionsProvider>(context).currentScore} / 4",
                  style: TextStyle(fontFamily: 'English', fontSize: 40,color: Colors.white),
                ),
              ),
            ))));
  }
}
