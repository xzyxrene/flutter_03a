import 'package:flutter/material.dart';
import 'package:flutter_03a/text.dart';
import 'package:flutter_03a/text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _quoteIndex = 0;
  final _quotes = const [
    'Quote 1',
    'Quote 2',
    'Quote 3',
    'Quote 4',
    'Quote 5',
  ];

  void _next() {
    setState(() {
      (_quoteIndex == 4) ? _quoteIndex = 0 : _quoteIndex += 1;
    });
  }

  void _previous() {
    setState(() {
      (_quoteIndex == 0) ? _quoteIndex = 4 : _quoteIndex -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App for displaying quotes!'),
        ),
        body: Column(
          children: [
            Quote(
              index: _quoteIndex,
              quoteText: _quotes,
            ),
            TextControl(
              previous: _previous,
              next: _next,
            ),
          ],
        ),
      ),
    );
  }
}
