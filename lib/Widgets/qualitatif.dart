import 'package:flutter/material.dart';

class Qualitatif extends StatelessWidget {
  const Qualitatif(
      {Key? key, required this.title, this.litleTitle, required this.number})
      : super(key: key);
  final String? title;
  final String? litleTitle;
  final int? number;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        height: 60,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              litleTitle!,
              style: const TextStyle(fontSize: 15),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Text(
                  number!.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
