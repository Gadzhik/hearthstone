import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 90, 226, 0)),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}
