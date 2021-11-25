import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/constants_.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:get/get.dart';

GetStat _controller = Get.put(GetStat());
Future<void> displayTextInputDialog(BuildContext context) {
  TextEditingController? _textFieldController = TextEditingController(text: "");
  TextEditingController? _textFieldController2 =
      TextEditingController(text: "");
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Code Vendeur'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _textFieldController2,
                decoration: const InputDecoration(hintText: "Code CDZ"),
              ),
              TextField(
                controller: _textFieldController,
                decoration:
                    const InputDecoration(hintText: "Entree votre code svp."),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  if (_textFieldController.text.isEmpty ||
                      _textFieldController2.text != codeCdz ||
                      _textFieldController2.text.isEmpty) {
                    Get.snackbar("Attention", "Entree un code vendeur",
                        barBlur: 50);
                  } else {
                    _controller.userName.value = _textFieldController.text;
                    _controller.writeName();
                    Navigator.pop(context);
                  }
                },
                child: const Text("Valide"))
          ],
        );
      });
}
