import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build çalıştı");

    return Scaffold(
      appBar: AppBar(
        title: Text("Başlık"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red.shade100,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Butona basılma miktarı",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            MyNewTextWidget(
              sayac: _sayac,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("fab'a tıklandı.");

          setState(() {
            _sayac++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
    required int sayac,
  })  : _sayac = sayac,
        super(key: key);

  final int _sayac;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _sayac.toString(),
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
