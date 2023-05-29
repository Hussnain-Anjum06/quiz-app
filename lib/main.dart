import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  int? score;
  void _answerQuestion(int? score) {
    _totalScore += score!;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < 10) {
      print('We have more questions..');
    } else {
      print('You did it!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What is the capital of Pakistan?',
        'answers': [
          {'text': 'Lahore', 'score': 0},
          {'text': 'Karachi', 'score': 0},
          {'text': 'Islamabad', 'score': 2},
          {'text': 'Multan', 'score': 0},
        ],
      },
      {
        'questionText': 'Which is the national flower of Pakistan?',
        'answers': [
          {'text': 'Rose', 'score': 0},
          {'text': 'Jasmine', 'score': 2},
          {'text': 'Lilly', 'score': 0},
          {'text': 'Sunflower', 'score': 0}
        ],
      },
      {
        'questionText': 'What is the name of the largest desert in Pakistan?',
        'answers': [
          {'text': 'Thal', 'score': 0},
          {'text': 'Thar', 'score': 2},
          {'text': 'Cholistan', 'score': 0},
          {'text': 'Kharan', 'score': 0}
        ],
      },
      {
        'questionText':
            'Which city in Pakistan is known as the City of Flowers?',
        'answers': [
          {'text': 'Quetta', 'score': 0},
          {'text': 'Peshawar', 'score': 2},
          {'text': 'Islamabad', 'score': 0},
          {'text': 'Muree', 'score': 0}
        ],
      },
      {
        'questionText':
            'Which river is also known as the "father of rivers" in Pakistan?',
        'answers': [
          {'text': ' Jhelum', 'score': 0},
          {'text': ' Chenab', 'score': 0},
          {'text': 'Indus', 'score': 2},
          {'text': 'Ravi', 'score': 0}
        ],
      },
      {
        'questionText': 'What is the name of the national animal of Pakistan?',
        'answers': [
          {'text': 'Leopard', 'score': 0},
          {'text': 'Markhor', 'score': 2},
          {'text': 'Lion', 'score': 0},
          {'text': 'Tiger', 'score': 0}
        ],
      },
      {
        'questionText': 'Which is the national language of Pakistan?',
        'answers': [
          {'text': 'English', 'score': 0},
          {'text': 'Saraiki', 'score': 0},
          {'text': 'Urdu', 'score': 2},
          {'text': 'Pashto', 'score': 0}
        ],
      },
      {
        'questionText': 'Who is Nawaz Sharif?',
        'answers': [
          {'text': 'Choor', 'score': 2},
          {'text': 'Choor', 'score': 2},
          {'text': 'Choor', 'score': 2},
          {'text': 'Choor', 'score': 2}
        ],
      },
      {
        'questionText': 'What is the currency of Pakistan?',
        'answers': [
          {'text': 'Ruppee', 'score': 2},
          {'text': 'Riyal', 'score': 0},
          {'text': 'Dollar', 'score': 0},
          {'text': 'Yen', 'score': 0}
        ],
      },
      {
        'questionText': 'Which is the national tree of Pakistan?',
        'answers': [
          {'text': 'Banyan', 'score': 0},
          {'text': 'Neem', 'score': 0},
          {'text': 'Peepal', 'score': 0},
          {'text': 'Deodar', 'score': 2}
        ],
      },

      ///when a variable is const its can't change var error(questions) = [];
      ///when a value is const value can't update but you can use var again
      ///and ovveride value
      ///var question = const['hello];
      ///question.add('By'); print(question); var question = [] override
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basico'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        backgroundColor: Color.fromARGB(255, 148, 233, 213),
      ),
    );
  }
}
