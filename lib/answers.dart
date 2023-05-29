import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      constraints: BoxConstraints.tightFor(width: 130, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 20,
            ),
            backgroundColor: Color.fromARGB(255, 6, 65, 113)),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
