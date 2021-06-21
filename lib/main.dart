import 'package:flutter/material.dart';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() => runApp(MaterialApp(
      home: mainScreen(),
    ));

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            height: 675.1358,
            width: 354.7804,
            decoration: new BoxDecoration(
              color: Color(0xFF8C364E),
              borderRadius: BorderRadius.circular(37),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: CircularCountDownTimer(
                      // Countdown duration in Seconds.
                      duration: 10,

                      // Countdown initial elapsed Duration in Seconds.
                      initialDuration: 0,

                      // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
                      controller: _controller,

                      // Width of the Countdown Widget.
                      width: MediaQuery.of(context).size.width / 4,

                      // Height of the Countdown Widget.
                      height: MediaQuery.of(context).size.height / 5,

                      // Ring Color for Countdown Widget.
                      ringColor: Color(0xFF8C364E),

                      // Ring Gradient for Countdown Widget.
                      ringGradient: null,

                      // Filling Color for Countdown Widget.
                      fillColor: Color(0xFF592043),

                      // Filling Gradient for Countdown Widget.
                      fillGradient: null,

                      // Background Color for Countdown Widget.
                      backgroundColor: Color(0xFF8C364E),

                      // Background Gradient for Countdown Widget.
                      backgroundGradient: null,

                      // Border Thickness of the Countdown Ring.
                      strokeWidth: 20.0,

                      // Begin and end contours with a flat edge and no extension.
                      strokeCap: StrokeCap.round,

                      // Text Style for Countdown Text.
                      textStyle: TextStyle(
                          fontSize: 33.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),

                      // Format for the Countdown Text.
                      textFormat: CountdownTextFormat.S,

                      // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
                      isReverse: false,

                      // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
                      isReverseAnimation: false,

                      // Handles visibility of the Countdown Text.
                      isTimerTextShown: true,

                      // Handles the timer start.
                      autoStart: false,

                      // This Callback will execute when the Countdown Starts.
                      onStart: () {
                        // Here, do whatever you want
                        print('Countdown Started');
                      },

                      // This Callback will execute when the Countdown Ends.
                      onComplete: () {
                        // Here, do whatever you want
                        print('Countdown Ended');
                      },
                    ),
                  ),
                  Text(
                    "ما هو مؤنث عطشان؟",
                    style: TextStyle(fontSize: 40, fontFamily: 'Arabic'),
                    textDirection: TextDirection.rtl,
                  ),
                  TextButton(
                    onPressed: () => _controller.start(),
                    child: Text("Asdasd"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
