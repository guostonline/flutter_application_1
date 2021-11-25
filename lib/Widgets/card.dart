import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Widgets/message.dart';
import 'package:flutter_application_1/Widgets/percent.dart';
import 'package:flutter_application_1/Widgets/realisation.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.famille,
    required this.objectif,
    required this.realisation,
    required this.jourRest,
    required this.messageCDZ,
    required this.messageCDA,
    required this.percent,
  }) : super(key: key);
  final String famille;
  final int objectif;
  final int realisation;
  final int jourRest;
  final String messageCDZ;
  final String messageCDA;
  final int percent;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: percent >= 0 ? Colors.blue.shade50 : Colors.red.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  famille,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Percent(percent: percent),
              ],
            ),
            Realisation(
              objectif: objectif,
              realisation: realisation,
              jourRest: jourRest,
            ),
            const Divider(
              thickness: 1,
            ),
            MyMessage(
              messageCDZ: messageCDZ,
              messageCDA: messageCDA,
              goodOrbad: percent >= 0 ? true : false,
            )
          ],
        ),
      ),
    );
  }
}
