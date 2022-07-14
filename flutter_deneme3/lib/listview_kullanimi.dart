import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, "Ogrenci adi ${index + 1}", "Ogrenci soyadi ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: buildListViewSeparated(),
    );
  }

  ListView buildListViewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: (() {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast(
                "Eleman tıklandı",
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            }),
            onLongPress: () {
              _alertDialogIslemleri(context, oankiOgrenci);
            },
            title: Text(oankiOgrenci.ad),
            subtitle: Text(oankiOgrenci.soyAd),
            leading: CircleAvatar(
              child: Text(
                oankiOgrenci.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.ad),
              subtitle: Text(ogr.soyAd),
              leading: CircleAvatar(
                child: Text(
                  ogr.id.toString(),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("data" * 100),
                Text("ahmet" * 200),
                Text("veri" * 121),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("TAMAM"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("KAPAT"),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

class Ogrenci {
  final int id;
  final String ad;
  final String soyAd;

  Ogrenci(this.id, this.ad, this.soyAd);

  @override
  String toString() {
    return "Isim : $ad - Soyad : $soyAd - id : $id";
  }
}
