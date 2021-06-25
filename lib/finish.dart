import 'package:flutter/material.dart';

class finish extends StatefulWidget {
  @override
  _finishState createState() => _finishState();
}

class _finishState extends State<finish> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
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
                  "Enta gebt ${data['score']} men ${data['maxScore']}",
                  style: TextStyle(fontFamily: 'English', fontSize: 40),
                ),
              ),
            ))));
  }
}
