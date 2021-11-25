import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/constants_.dart';
import 'package:flutter_application_1/Logics/get_x.dart';
import 'package:get/get.dart';

GetStat _controller = Get.put(GetStat());

int restParJour(int objectif, int realisation, int jourRest) {
  return ((objectif - realisation) / jourRest).round();
}

int doubleToInt(var value) {
  if (value == null) return 0;
  return double.parse(value).toInt();
}

