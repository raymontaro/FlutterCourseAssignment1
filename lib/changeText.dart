import 'package:flutter/material.dart';

class ChangeText extends StatelessWidget {
  final VoidCallback changeText;

  ChangeText(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Change text'),
        onPressed: changeText,
      ),
    );
  }
}
