import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback f;
  final String s;
  Answer(this.f, this.s);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(2),
      child: ElevatedButton(onPressed: f, child: Text(s)),
    );
  }
}
