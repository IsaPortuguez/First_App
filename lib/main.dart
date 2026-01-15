import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

const color1 = Color.fromARGB(255, 33, 5, 109);
const color2 = Color.fromARGB(255, 68, 21, 149);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer(color1, color2)),
    ),
  );
}
