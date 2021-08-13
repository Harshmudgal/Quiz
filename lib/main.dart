import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Final.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const quest = [
    {
      'question': 'What is your favourite animal?',
      'answer': ['Dogggg', 'Cat', 'Cryptus']
    },
    {
      'question': 'What is you favourite food?',
      'answer': ['Noodles', 'Momos', 'Spring Roll']
    },
    {
      'question': 'What is your favourite subject?',
      'answer': ['Chemistry', 'Physics', 'Maths']
    },
  ];

  int num = 0;

  void _increment() {
    print(num);
    setState(() {
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: (num < 3) ? Quiz(_increment, quest, num) : Final()),
    );
  }
}
