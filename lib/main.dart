// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logics/connect_to_sheets.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/Pages/qualitatif_page.dart';
import 'package:flutter_application_1/Widgets/card.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStat _controller = Get.put(GetStat());

    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text("chakib"),
            actions: [
              IconButton(
                  onPressed: () async {
                    _controller.suivieList.value =
                        await getDataFromSheets("973");
                    _controller.myCalc();

                    print("suivielist " + _controller.suivieList[0][4]);
                  },
                  icon: Icon(Icons.ac_unit)),
              IconButton(
                  onPressed: () {
                    Get.to(QualitatifPage());
                  },
                  icon: Icon(Icons.more_horiz))
            ],
          ),
          body: ListView(
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
          )),
    );
  }
}
