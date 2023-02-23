import 'package:flutter/material.dart';

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
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(_quotes[_quoteIndex],
                  style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  width: 100,
                  child: ElevatedButton(
                      onPressed: _previous, child: Text('Previous')),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60),
                  width: 100,
                  child: ElevatedButton(onPressed: _next, child: Text('Next')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
