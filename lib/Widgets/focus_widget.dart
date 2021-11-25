import 'package:flutter/material.dart';

class FocusWidget extends StatelessWidget {
  final String? focusName;
  final String? objectif;
  final String? realise;
  final String? restJour;
  final String? subTitle;
  final String? message;
  const FocusWidget(
      {Key? key,
      required this.focusName,
      required this.objectif,
      required this.realise,
      required this.restJour,
      this.message,
      this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(focusName!,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ListTile(
                title: const Text(
                  "Objectif",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  subTitle ?? "",
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(objectif!.toString(),
                    style: const TextStyle(fontSize: 30))),
            ListTile(
                title: const Text(
                  "Realisée",
                  style: TextStyle(fontSize: 25),
                ),
                trailing: Text(realise!.toString(),
                    style: const TextStyle(fontSize: 30))),
            ListTile(
                title: const Text(
                  "Reste/jours",
                  style: TextStyle(fontSize: 25),
                ),
                trailing: Text(restJour!.toString(),
                    style: const TextStyle(fontSize: 30))),
            const Divider(),
            const Text(
              "Message: ",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                message ?? "",
                style: const TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
