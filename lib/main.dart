// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/default_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultPage(),
    ),
  );
}

