import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvc_example/View/counter_view.dart';
import 'package:mvc_example/View/dropdown_example.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDownExample(),
    ),
  );
}
