import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/constants_.dart';

class MessageQualitatif extends StatelessWidget {
  final String message;
  final int percent;
  const MessageQualitatif(
      {Key? key, required this.message, required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        percent >= 100
            ? const Center(
                child: Icon(
                  CupertinoIcons.hand_thumbsup,
                  size: 100,
                  color: Colors.grey,
                ),
              )
            : const Center(
                child: Icon(
                  CupertinoIcons.hand_thumbsdown,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
        Container(
          padding:const EdgeInsets.all(8),
          height: 200,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
          child: Text(
            message,
            style: textStyle1,
          ),
        )
      ],
    );
  }
}
