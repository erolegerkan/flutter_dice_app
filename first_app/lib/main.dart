import 'package:first_app/components/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {

  List<Color> colors = [Colors.pink, Colors.purple];

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    ),
  );
}
