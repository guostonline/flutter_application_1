import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logics/connect_to_sheets.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/View/focus_page.dart';
import 'package:flutter_application_1/View/qualitatif_page.dart';
import 'package:flutter_application_1/View/quatitatif_page.dart';
import 'package:flutter_application_1/Widgets/dialogue_box.dart';
import 'package:get/get.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStat _controller = Get.put(GetStat());

    return DefaultTabController(
        length: 3,
        child: Obx(
          () => Scaffold(
              appBar: AppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_controller.userName.value),
                    Text(_controller.dateSuivie.value),
                  ],
                ),
                actions: [
                  IconButton(
                      onPressed: () async {
                        if (_controller.userName.value.isEmpty) {
                          Get.snackbar(
                            "attention",
                            "Entree votre code..",
                            snackPosition: SnackPosition.BOTTOM,
                            barBlur: 20,
                          );
                        } else {
                          _controller.writeName();
                          _controller.clearData();
                          _controller.fetchData();
                        }
                      },
                      icon: const Icon(Icons.autorenew)),
                  IconButton(
                      onPressed: () {
                        displayTextInputDialog(context);
                      },
                      icon: const Icon(Icons.account_circle)),
                ],
                bottom: const TabBar(tabs: [
                  Tab(
                    text: "Quantitatif",
                  ),
                  Tab(
                    text: "Qualitatif",
                  ),
                  Tab(
                    text: "Focus",
                  ),
                ]),
              ),
              body: const TabBarView(children: [
                QuantitatifPage(),
                QualitatifPage(),
                FocusPage(),
              ])),
        ));
  }
}
