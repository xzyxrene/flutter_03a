import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final int index;
  final List<String> quoteText;

  Quote({
    required this.index,
    required this.quoteText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(quoteText[index],
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
