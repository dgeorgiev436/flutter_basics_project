import 'package:flutter/material.dart';


import "./question.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// State of generic type, Tells that MyAppState belongs to MyApp
// Underscore "_" turns MyAppState in to a private class
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // setState function tells flutter to change the state of the app
    setState(() {

      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
          RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion),
          RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion),
        ],
      ),
    ));
  }
}
