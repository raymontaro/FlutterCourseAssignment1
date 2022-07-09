import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final List<Map<String, Object>> textList;
  final int textIndex;

  ShowText(this.textList, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textList[textIndex]['text'].toString(),
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
