import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/qualitatif.dart';

class QualitatifPage extends StatelessWidget {
  const QualitatifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: const [
            Qualitatif(title: "Total", litleTitle: "Clients", number: 657),
            Qualitatif(title: "Total", litleTitle: "Clients", number: 657),
            Qualitatif(title: "Total", litleTitle: "Clients", number: 657),
          ],
        ),
      ),
    );
  }
}
