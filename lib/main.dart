import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
             Color.fromARGB(255, 126, 59, 75),
             Color.fromARGB(255, 186, 105, 166)
          ,),
      ),
    ),
  );
}

