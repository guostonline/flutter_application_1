import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Widgets/qualitatif.dart';

class QualitatifPage extends StatelessWidget {
  const QualitatifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/image/download.jpeg",
                ),
                fit: BoxFit.cover)),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: const [
            Qualitatif(
                title: "Total",
                litleTitle: "Clients",
                number: '657',
                isLineParBl: false),
            Qualitatif(
                title: "ACM",
                litleTitle: "Objectif %",
                number: '77%',
                isLineParBl: false),
            Qualitatif(
                title: "Objectif",
                litleTitle: "Total BL",
                number: '522',
                isLineParBl: false),
            Qualitatif(
                title: "Objectif",
                litleTitle: "BL/jour",
                number: '28',
                isLineParBl: false),
            Qualitatif(
                title: "Objectif",
                litleTitle: "Line/BL",
                number: '4,7',
                isLineParBl: true),
            Qualitatif(
                title: "%",
                litleTitle: "Line/BL",
                number: '92',
                isLineParBl: true),
            Qualitatif(
                title: "Realisation",
                litleTitle: "Line/BL",
                number: '4,4',
                isLineParBl: true),
          ],
        ),
      ),
    );
  }
}
