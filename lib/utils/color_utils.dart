import 'dart:math';

import 'package:flutter/material.dart';

final _random = Random();

Color generateRandomColor() {
  return Color.fromARGB(
    255,
    _random.nextInt(255),
    _random.nextInt(255),
    _random.nextInt(255),
  );
}
