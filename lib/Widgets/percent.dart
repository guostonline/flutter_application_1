// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Percent extends StatelessWidget {
  const Percent({
    Key? key,
    required this.percent,
  }) : super(key: key);
  final int percent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        percent >= 0
            ? Text(
                percent.toString() + "%",
                style: const TextStyle(fontSize: 45, color: Colors.blue),
              )
            : Text(percent.toString() + "%",
                style: const TextStyle(fontSize: 40, color: Colors.red)),

      ],
    );
  }
}
