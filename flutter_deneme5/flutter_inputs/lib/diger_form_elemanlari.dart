import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  DigerFormElemanlari({Key? key}) : super(key: key);

  @override
  State<DigerFormElemanlari> createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  late Color switchRenk;
  double sliderDeger = 10;

  String dropDownSehir = "Yalova";

  @override
  void initState() {
    switchRenk = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi!;
                });
              },
              activeColor: Colors.red,
              title: Text("Title"),
              subtitle: Text("SubTitle"),
              secondary: Icon(Icons.alarm),
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print(sehir);
                });
              },
              title: Text("Ankara"),
            ),
            RadioListTile<String>(
              value: "Yalova",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print(sehir);
                });
              },
              title: Text("Yalova"),
            ),
            RadioListTile<String>(
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  print(sehir);
                });
              },
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.yard_sharp),
              activeColor: Colors.red,
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  if (deger) {
                    switchRenk = Colors.blue;
                  } else
                    switchRenk = Colors.red;
                  switchState = deger;
                  print(switchState);
                });
              },
              title: Text(
                "Title",
                style: TextStyle(color: switchRenk),
              ),
              subtitle: Text("Switch Subtitle"),
              tileColor: Colors.red.shade100,
              secondary: Icon(Icons.ac_unit_sharp, color: Colors.blueAccent),
            ),
            Slider(
              value: sliderDeger,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDeger = yeniDeger;
                });
              },
              min: 10,
              max: 20,
              divisions: 100,
              label: sliderDeger.toString(),
              activeColor: Colors.orange,
              inactiveColor: Colors.red,
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Icon(Icons.location_city_rounded),
                      Text("Yalova"),
                    ],
                  ),
                  value: "Yalova",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Icon(Icons.forest),
                      Text("Rize"),
                    ],
                  ),
                  value: "Rize",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Icon(Icons.waves),
                      Text("Antalya"),
                    ],
                  ),
                  value: "Antalya",
                ),
              ],
              onChanged: (String? secilen) {
                setState(() {
                  dropDownSehir = secilen!;
                });
              },
              hint: Text("Seçiniz..."),
              value: dropDownSehir,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_rounded),
        onPressed: () {},
      ),
    );
  }
}
