import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    TextButton(
                        child: Text(
                          "ابداء",
                          style: TextStyle(
                            fontFamily: 'Arabic',
                            fontSize: 50,
                            color: Colors.white,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacementNamed(context, '/h');
                          });
                        })
                  ])),
            ))));
  }
}
