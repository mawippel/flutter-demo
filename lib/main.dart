import 'package:flutter/material.dart';
import 'package:flutter_demo/container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        body: Center(
          child: Category(
            name: 'Passing params',
          ),
        )
      ),
    ),
  );
}