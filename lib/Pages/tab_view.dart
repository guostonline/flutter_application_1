import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logics/connect_to_sheets.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/Pages/qualitatif_page.dart';
import 'package:flutter_application_1/Pages/quatitatif_page.dart';
import 'package:flutter_application_1/Widgets/card.dart';
import 'package:flutter_application_1/Widgets/qualitatif.dart';
import 'package:get/get.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStat _controller = Get.put(GetStat());

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("chakib 973"),
              actions: [
                IconButton(
                    onPressed: () async {
                      _controller.suivieList.value =
                          await getDataFromSheets("973");
                      _controller.myCalc();
                    },
                    icon: const Icon(Icons.autorenew))
              ],
              bottom: const TabBar(tabs: [
                Tab(
                  text: "Quantitatif",
                ),
                Tab(
                  text: "Qualitatif",
                ),
                Tab(
                  text: "Message",
                ),
              ]),
            ),
            body: const TabBarView(children: [
              QuantitatifPage(),
              QualitatifPage(),
              QuantitatifPage(),
            ])));
  }
}
