import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_deneme3/card_list_tile.dart';
import 'package:flutter_deneme3/custom_scroll_ve_slivers.dart';
import 'package:flutter_deneme3/dropdown_button_kullanimi.dart';
import 'package:flutter_deneme3/grid_view_kullanimi.dart';
import 'package:flutter_deneme3/image_widgets.dart';
import 'package:flutter_deneme3/listview_kullanimi.dart';
import 'package:flutter_deneme3/my_counter_page.dart';
import 'package:flutter_deneme3/popupmenu_kullanimi.dart';
import 'package:flutter_deneme3/temel_buton_turleri.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  debugPrint("main metod çalıştı");
  runApp(MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build çalıştı");
    return MaterialApp(
      title: "Başlık",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.purple,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: CollapsableToolBarOrnek(),
      builder: EasyLoading.init(),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
