import 'package:chakri_chai/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

TextSpan textSpan(context, page, st1, st2) {
  return TextSpan(
      text: st1,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      children: <TextSpan>[
        TextSpan(
            text: st2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                nextScreen(context, page);
              })
      ]);
}

