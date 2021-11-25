import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:flutter_application_1/Widgets/focus_widget.dart';
import 'package:get/get.dart';

GetStat _controller = Get.put(GetStat());

class FocusPage extends StatelessWidget {
  const FocusPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx(
          () => ListView.builder(
              itemCount: _controller.focus.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: FocusWidget(
                    focusName: _controller.focus[index][1],
                    objectif: _controller.focus[index][2],
                    subTitle: _controller.focus[index][3],
                    realise: _controller.focus[index][4],
                    restJour: _controller.focus[index][5],
                    message: _controller.focus[index][7],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
