import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = "Ankara";
  List<String> renkler = ["mavi", "yeşil", "kırmızı", "sarı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print("Seçilen şehir : $sehir");
          setState(() {
            _secilenSehir = sehir;
          });
          // seçilen eleman burada alınıyor...
        },
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(
              child: Text("Van"),
              value: "Van",
            ),
          ]; */
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
