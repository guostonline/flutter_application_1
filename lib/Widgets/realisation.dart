import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Realisation extends StatelessWidget {
  const Realisation({
    Key? key,
    required this.objectif,
    required this.realisation,
    required this.jourRest,
  }) : super(key: key);
  final int objectif;
  final int realisation;
  final int jourRest;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 12, color: Colors.black),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Objectif",
                ),
                Text(objectif.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(
                  (objectif * 1.2).toStringAsFixed(0),
                ),
              ],
            ),
            const VerticalDivider(
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Realisation",
                ),
                Text(realisation.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(
                  (realisation * 1.2).toStringAsFixed(0),
                ),
              ],
            ),
            const VerticalDivider(
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Rest/jour TTC"),
                Text(jourRest.toString(),
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
