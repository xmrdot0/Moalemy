import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: mainScreen(),
    ));

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.all(100),
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.redAccent[700],
                child: Text("quiz 2"),
                radius: 100,
              ),
              Container(
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
