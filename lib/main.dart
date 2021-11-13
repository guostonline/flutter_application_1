// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/constants.dart';
import 'package:flutter_application_1/Widgets/card.dart';
import 'package:flutter_application_1/Widgets/message.dart';
import 'package:flutter_application_1/Widgets/percent.dart';
import 'package:flutter_application_1/Widgets/realisation.dart';
import 'package:gsheets/gsheets.dart';

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
        actions: [
          IconButton(
              onPressed: () async {
                final gSheets = GSheets(credentials);
                final ss = await gSheets.spreadsheet(spreadSheet);
                var sheet = ss.worksheetByTitle("Suivie");
                //update a cell&1
                await sheet!.values.insertValue("bien fait", column: 1, row: 1);
                var test = await sheet.values.value(column: 1, row: 1);
                print(test);
              },
              icon: Icon(Icons.ac_unit))
        ],
      ),
      body: (ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          MyCard(
            famille: "Chiffre d'affaire",
            objectif: 200000,
            realisation: 32000,
            jourRest: 12,
            message: "faite attension il rest que 10 jours",
            percent: 12,
          ),
          MyCard(
            famille: "Levure",
            objectif: 90000,
            realisation: 32000,
            jourRest: 12,
            message: "faite attension il rest que 10 jours",
            percent: -12,
          ),
          MyCard(
            famille: "Buillion",
            objectif: 45000,
            realisation: 22000,
            jourRest: 12,
            message: "Bien continue",
            percent: 50,
          ),
          MyCard(
            famille: "MGM",
            objectif: 12000,
            realisation: 8000,
            jourRest: 12,
            message: "Toujours negatif",
            percent: -43,
          ),
        ],
      )),
    );
  }
}
