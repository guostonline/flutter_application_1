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

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)),
      elevation: 15,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.orangeAccent,
             // Colors.yellow.shade300,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
