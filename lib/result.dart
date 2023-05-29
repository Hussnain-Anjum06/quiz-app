import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  int totalScore = 20;
  String get resultPharas {
    String resultText;
    if (resultScore >= 18) {
      resultText = 'You are awesom & Innocent';
    } else if (resultScore >= 15) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore >= 10) {
      resultText = 'Good work! Keep it up!';
    } else if (resultScore >= 5) {
      resultText = 'keep practicing and you\'ll improve';
    } else {
      resultText = 'Don\'t worry & try again';
    }
    ;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.only(top: 40),
            constraints: BoxConstraints.tightFor(width: 600, height: 230),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 46, 129, 100),
                    Color.fromARGB(255, 29, 86, 99)
                  ],
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    resultPharas,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 20),
                  child: OutlinedButton(
                    child: Text(
                      'Score:  $resultScore / $totalScore'.toString(),
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 213, 210, 229)),
                      textAlign: TextAlign.center,
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red, width: 2),
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 50,
          left: 45,
          bottom: 220,
          child: Center(
            child: TextButton(
              child: Text(
                'Return To Home?',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: resetHandler,
            ),
          ),
        ),
      ],
    );
  }
}
