import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    Key? key,
    required this.messageCDZ,
    required this.messageCDA,
    required this.goodOrbad,
  }) : super(key: key);
  final String messageCDZ;
  final String messageCDA;
  final bool goodOrbad;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Note : ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Loukili: " + messageCDZ),
            Text("Lahlali: " + messageCDA)
          ],
        ),
        goodOrbad
            ? const Icon(
                Icons.thumb_up,
                color: Colors.blue,
              )
            : const Icon(
                Icons.thumb_down,
                color: Colors.red,
              )
      ],
    );
  }
}
