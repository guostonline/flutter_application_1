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
                style: const TextStyle(fontSize: 40, color: Colors.blue),
              )
            : Text(percent.toString() + "%",
                style: const TextStyle(fontSize: 40, color: Colors.red)),
        percent >= 0
            ? Icon(
                Icons.thumb_up,
                size: 40,
                color: Colors.blue,
              )
            : Icon(
                Icons.thumb_down,
                size: 40,
                color: Colors.red,
              ),
      ],
    );
  }
}
