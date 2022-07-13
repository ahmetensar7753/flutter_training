import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_deneme3/dropdown_button_kullanimi.dart';
import 'package:flutter_deneme3/image_widgets.dart';
import 'package:flutter_deneme3/my_counter_page.dart';
import 'package:flutter_deneme3/popupmenu_kullanimi.dart';
import 'package:flutter_deneme3/temel_buton_turleri.dart';

void main() {
  debugPrint("main metod çalıştı");
  runApp(MyApp());
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Ornekleri"),
          actions: [PopupmenuKullanimi()],
        ),
        body: PopupmenuKullanimi(),
      ),
    );
  }
}
