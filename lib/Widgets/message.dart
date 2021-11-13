import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Note : ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(message)
      ],
    );
  }
}
