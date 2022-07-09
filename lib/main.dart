import 'package:flutter/material.dart';
import './changeText.dart';
import './showText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _textList = [
    {'text': 'first text'},
    {'text': 'second text'},
    {'text': 'third text'},
    {'text': 'fourth text'},
    {'text': 'fifth text'},
  ];

  var _textIndex = 0;

  void _changeText() {
    setState(() {
      if (_textIndex < _textList.length - 1) {
        _textIndex++;
      } else {
        _textIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Column(
          children: [
            ShowText(_textList, _textIndex),
            ChangeText(_changeText),
          ],
        ),
      ),
    );
  }
}
