import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Deneme 2"),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dartColumnOlustur()),
            ],
          ),
        ),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade200),
        containerOlustur("A", Colors.orange.shade400),
        containerOlustur("R", Colors.orange.shade600),
        containerOlustur("T", Colors.orange.shade800),
      ],
    );
  }

  Column dartColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: containerOlustur("E", Colors.orange.shade100, margin: 10)),
        Expanded(
            child: containerOlustur("R", Colors.orange.shade200, margin: 10)),
        Expanded(
            child: containerOlustur("S", Colors.orange.shade300, margin: 10)),
        Expanded(
            child: containerOlustur("L", Colors.orange.shade400, margin: 10)),
        Expanded(
            child: containerOlustur("E", Colors.orange.shade500, margin: 10)),
        Expanded(
            child: containerOlustur("R", Colors.orange.shade600, margin: 10)),
        Expanded(
            child: containerOlustur("I", Colors.orange.shade700, margin: 10)),
      ],
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      color: renk,
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}
