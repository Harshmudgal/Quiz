//import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String q;
  Question({required this.q});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Text(
        q,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
