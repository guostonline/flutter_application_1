// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/percent.dart';
import 'package:flutter_application_1/Widgets/realisation.dart';

import 'Widgets/informations.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chakib"),
      ),
      body: (ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green.shade50,
            ),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            child:  Column(
              children:const [
                Percent(percent: 24),
                Realisation(
                    objectif: 178000, realisation: 26000, restAfaire: 8700)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
