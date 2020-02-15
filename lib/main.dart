import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whats your name?",
      "Whats your age?",
      "Do you like the pizza the pasta?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(children: <Widget>[
          Question(questions[questionIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
        ]),
      ),
    );
  }
}
