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
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            : Text(percent.toString() + "%",
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
      ],
    );
  }
}
