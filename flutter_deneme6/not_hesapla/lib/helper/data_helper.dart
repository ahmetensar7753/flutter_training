import 'package:flutter/material.dart';
import 'package:not_hesapla/constants/app_constants.dart';

class DataHelper {
  static List<String> _tumDerslerinHarfleri() {
    return ["AA", "BA", "BB", "CB", "CC", "DC", "DD", "FD", "FF"];
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case "AA":
        return 4.0;
      case "BA":
        return 3.5;
      case "BB":
        return 3.0;
      case "CB":
        return 2.75;
      case "CC":
        return 2.5;
      case "DC":
        return 2.25;
      case "DD":
        return 2.0;
      case "FD":
        return 1.0;
      case "FF":
        return 0.0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> tumDerslerinHarfleri() {
    return _tumDerslerinHarfleri()
        .map((e) => DropdownMenuItem(
              child: Text(
                e,
                style: TextStyle(color: Sabitler.anaRenk.shade900),
              ),
              value: _harfiNotaCevir(e),
            ))
        .toList();
  }
}
