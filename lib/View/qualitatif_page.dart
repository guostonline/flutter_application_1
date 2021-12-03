import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/Widgets/message_qualitatif.dart';
import 'package:flutter_application_1/Widgets/qualitatif.dart';
import 'package:get/get.dart';

GetStat _controller = Get.put(GetStat());

class QualitatifPage extends StatelessWidget {
  const QualitatifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
            children: [
              Qualitatif(
                  title: "Total ",
                  litleTitle: "Clients",
                  number: _controller.qualitatif[0][3].toString(),
                  isLineParBl: false),
              Qualitatif(
                  title: "ACM",
                  litleTitle: "Objectif %",
                  number: '${_controller.qualitatif[0][3].toString()} %',
                  isLineParBl: false),
              Qualitatif(
                  title: "Objectif",
                  litleTitle: "Total BL",
                  number: _controller.qualitatif[0][4].toString(),
                  isLineParBl: false),
              Qualitatif(
                  title: "Objectif",
                  litleTitle: "BL/jour",
                  number: _controller.qualitatif[0][5].toString(),
                  isLineParBl: false),
              Qualitatif(
                  title: "Objectif",
                  litleTitle: "Line/BL",
                  number: _controller.qualitatif[0][6].toString(),
                  isLineParBl: true),
              Qualitatif(
                  title: "Realisation",
                  litleTitle: "Line/BL",
                  number: _controller.qualitatif[0][7].toString(),
                  isLineParBl: true),
              Qualitatif(
                  title: "%",
                  litleTitle: "Line/BL",
                  number: '${_controller.qualitatif[0][8].toString()}%',
                  isLineParBl: true),
              MessageQualitatif(
                  message: _controller.qualitatif[0][9],
                  percent: int.parse(_controller.qualitatif[0][8]))
            ],
          ),
        ),
      ),
    );
  }
}
