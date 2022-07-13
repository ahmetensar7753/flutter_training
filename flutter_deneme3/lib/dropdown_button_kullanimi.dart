import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    "Düzce",
    "Rize",
    "Yalova",
    "İzmir",
    "Van",
    "Manisa",
    "Adana"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir Seçiniz"),
        icon: Icon(Icons.arrow_downward),
        iconSize: 14,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(color: Colors.red),
        /*items: [
           DropdownMenuItem(
            child: Text("Ankara Sehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("Bursa Sehri"),
            value: "Bursa",
          ),
          DropdownMenuItem(
            child: Text("İzmir Sehri"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("Yalova Sehri"),
            value: "Yalova",
          ),       
        ], */
        items: _tumSehirler
            .map(
              (String oAnkiSehir) => DropdownMenuItem(
                child: Text(oAnkiSehir),
                value: oAnkiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            print("Çalıştı $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
