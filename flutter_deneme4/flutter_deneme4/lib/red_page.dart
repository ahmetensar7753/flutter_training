import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);

  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("onWillPop çalıştı.");
        _rastgeleSayi = Random().nextInt(100);
        print(_rastgeleSayi);
        Navigator.pop(context, _rastgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Red Page"),
          backgroundColor: Colors.red,
          /* automaticallyImplyLeading:
                false // bu kısım geri dön butonunu kapatıyor. */
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Red Page",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print(_rastgeleSayi);
                  Navigator.of(context).pop(_rastgeleSayi);
                },
                child: Text("Geri Dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    print("Evet Pop Olabilir");
                  } else {
                    print("Hayır olamaz");
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade900,
                  minimumSize: Size(350, 40),
                  maximumSize: Size(350, 40),
                ),
                child: Text("Can Pop Kullanımı"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/orangePage");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange.shade900,
                  minimumSize: Size(350, 40),
                  maximumSize: Size(350, 40),
                ),
                child: Text("Go To Orange"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
