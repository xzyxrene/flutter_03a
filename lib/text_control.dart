import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback previous;
  final VoidCallback next;

  TextControl({
    required this.previous,
    required this.next,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 60),
          width: 100,
          child: ElevatedButton(onPressed: previous, child: Text('Previous')),
        ),
        Container(
          margin: EdgeInsets.only(left: 60),
          width: 100,
          child: ElevatedButton(onPressed: next, child: Text('Next')),
        ),
      ],
    );
  }
}
