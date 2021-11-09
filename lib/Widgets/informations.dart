// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

Widget information({String? famille, int? ht}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        famille!,
        style: TextStyle(fontSize: 20),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            ht.toString(),
            style: TextStyle(fontSize: 20),
          ),
          Text(
            (ht! * 1.2).toStringAsFixed(0),
            style: TextStyle(fontSize: 13),
          ),
        ],
      )
    ],
  );
}
