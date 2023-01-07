import 'package:flutter/material.dart';

class ColorStatic {
  BoxDecoration mainColor = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ]));
  Color mainColorOne = Colors.deepPurple.shade800;
}
