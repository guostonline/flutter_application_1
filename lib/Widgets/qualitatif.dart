import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/constants.dart';

class Qualitatif extends StatelessWidget {
  const Qualitatif(
      {Key? key,
      required this.title,
      this.litleTitle,
      required this.number,
      required this.isLineParBl})
      : super(key: key);
  final String? title;
  final String? litleTitle;
  final String? number;
  final bool isLineParBl;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 15,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isLineParBl ? myColor1 : myColor2,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              litleTitle!,
              style: const TextStyle(fontSize: 18),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Text(
                  number!.toString(),
                  style: const TextStyle(
                      fontSize: 55, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
