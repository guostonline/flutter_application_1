import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Realisation extends StatelessWidget {
  const Realisation({
    Key? key,
    required this.objectif,
    required this.realisation,
    required this.restAfaire,
  }) : super(key: key);
  final int objectif;
  final int realisation;
  final int restAfaire;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 16, color: Colors.black),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Obj",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(objectif.toString()),
                Text(
                  (objectif * 1.2).toStringAsFixed(0),
                  style: const TextStyle(fontSize: 12),
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(realisation.toString()),
                Text(
                  (realisation * 1.2).toStringAsFixed(0),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            const VerticalDivider(
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Rest/j",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(restAfaire.toString()),
                Text(
                  (restAfaire * 1.2).toStringAsFixed(0),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
