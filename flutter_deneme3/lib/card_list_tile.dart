import 'package:flutter/material.dart';

class CardveListKullanimi extends StatelessWidget {
  const CardveListKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve List Tile"),
      ),
      body: Center(
        child: ListView(
          //reverse: true, // elemanları tersten yazdırma.
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text("Selam"),
            ElevatedButton(
              onPressed: () {
                {}
              },
              child: Text("Deneme"),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.red.withOpacity(0.5),
          shadowColor: Colors.blue,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.yellow,
            ),
            title: Text("Başlık"),
            subtitle: Text("Alt Başlık"),
            trailing: Icon(Icons.ac_unit_sharp),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 3,
          height: 20,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
