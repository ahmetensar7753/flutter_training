import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme4/green_page.dart';
import 'package:flutter_deneme4/main.dart';
import 'package:flutter_deneme4/ogrenci_detay.dart';
import 'package:flutter_deneme4/ogrenci_listesi.dart';
import 'package:flutter_deneme4/orange_page.dart';
import 'package:flutter_deneme4/purple_page.dart';
import 'package:flutter_deneme4/red_page.dart';
import 'package:flutter_deneme4/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    } else
      return CupertinoPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _routeOlustur(AnaSayfa(), settings);

      case "/redPage":
        return _routeOlustur(RedPage(), settings);

      case "/yellowPage":
        return _routeOlustur(YellowPage(), settings);

      case "/orangePage":
        return _routeOlustur(OrangePage(), settings);

      case "/greenPage":
        return _routeOlustur(GreenPage(), settings);

      case "/purplePage":
        return _routeOlustur(PurplePage(), settings);

      case "/ogrenciListesi":
        print(settings.arguments);
        return _routeOlustur(OgrenciListesi(), settings);

      case "/ogrenciDetay":
        var ogrenci = settings.arguments as Ogrenci;
        return _routeOlustur(OgrenciDetay(secilenOgrenci: ogrenci), settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: Text("404")),
            body: Center(
              child: Text("Sayfa Bulunamadı"),
            ),
          ),
        );
    }
  }
}
