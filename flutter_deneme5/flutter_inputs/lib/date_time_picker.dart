import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TarihSaatOrnek extends StatefulWidget {
  TarihSaatOrnek({Key? key}) : super(key: key);

  @override
  State<TarihSaatOrnek> createState() => _TarihSaatOrnekState();
}

class _TarihSaatOrnekState extends State<TarihSaatOrnek> {
  @override
  Widget build(BuildContext context) {
    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(suan.year, suan.month - 3);
    DateTime yirmiGunSonrasi =
        DateTime(suan.year, suan.month + 1, suan.day + 20);

    TimeOfDay suankiSaat = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: suan,
                        firstDate: ucAyOncesi,
                        lastDate: yirmiGunSonrasi)
                    .then((secilenTarih) {
                  print(secilenTarih);
                  print(secilenTarih!.toIso8601String());
                  print(secilenTarih.toString());
                  print(secilenTarih.toUtc());
                  print(secilenTarih.toLocal());
                  print(secilenTarih.microsecondsSinceEpoch.toString());

                  print(formatDate(secilenTarih, [dd, "-", mm, "-", yyyy]));
                });
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text("Tarih Seç"),
            ),
            ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: suankiSaat)
                    .then((secilenSaat) {
                  print(secilenSaat!.hour.toString() +
                      " : " +
                      secilenSaat.minute.toString());
                });
              },
              child: Text("Saat Seç"),
            ),
          ],
        ),
      ),
    );
  }
}
