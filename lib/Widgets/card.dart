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
    required this.message,
    required this.percent,
  }) : super(key: key);
  final String famille;
  final int objectif;
  final int realisation;
  final int jourRest;
  final String message;
  final int percent;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: percent >= 0 ? Colors.blue.shade50 : Colors.red.shade50,
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                famille,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          MyMessage(message: message,goodOrbad: percent>=0?true:false,)
        ],
      ),
    );
  }
}
