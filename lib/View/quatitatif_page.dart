import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/Widgets/card.dart';
import 'package:get/get.dart';

class QuantitatifPage extends StatelessWidget {
  const QuantitatifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStat _controller = Get.put(GetStat());

    return Obx(
      () => Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/download.jpeg"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            MyCard(
              famille: "Chiffre d'affaire",
              objectif: _controller.caObj.value,
              realisation: _controller.caRealisation.value,
              jourRest: _controller.caRest.value,
              messageCDZ: _controller.caMessageCDZ.value,
              messageCDA: _controller.caMessageCDA.value,
              percent: _controller.caPercent.value,
            ),
            MyCard(
              famille: _controller.familleName1.value,
              objectif: _controller.famille1Ojb.value,
              realisation: _controller.famille1Realisation.value,
              jourRest: _controller.famille1Rest.value,
              messageCDZ: _controller.f1MessageCDZ.value,
              messageCDA: _controller.f1MessageCDA.value,
              percent: _controller.famille1Percent.value,
            ),
            MyCard(
              famille: _controller.familleName2.value,
              objectif: _controller.famille2Obj.value,
              realisation: _controller.famille2Realisation.value,
              jourRest: _controller.famille2Rest.value,
              messageCDZ: _controller.f2MessageCDZ.value,
              messageCDA: _controller.f2MessageCDA.value,
              percent: _controller.famille2Percent.value,
            ),
            MyCard(
              famille: _controller.familleName3.value,
              objectif: _controller.famille3Obj.value,
              realisation: _controller.famille3Realisation.value,
              jourRest: _controller.famille3Rest.value,
              messageCDZ: _controller.f3MessageCDZ.value,
              messageCDA: _controller.f3MessageCDA.value,
              percent: _controller.famille3Percent.value,
            ),
          ],
        ),
      ),
    );
  }
}
