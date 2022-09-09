// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor:  MaterialStateProperty.all(const Color.fromARGB(255, 234, 198, 57)),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
                  ),

  );
}
