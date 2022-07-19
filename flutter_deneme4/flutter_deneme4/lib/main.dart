import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme4/green_page.dart';
import 'package:flutter_deneme4/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(
                    builder: (redContext) => RedPage(),
                  ),
                );
                print("Ana sayfadaki sayı : $_gelenSayi");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade300,
              ),
              child: Text(
                "Kırmızı Sayfaya Gir IOS",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, route)
                Navigator.of(context)
                    .push<int>(MaterialPageRoute(
                      builder: (redContext) => RedPage(),
                    ))
                    .then((int? value) => debugPrint("Gelen sayı : $value"));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade600,
              ),
              child: Text(
                "Kırmızı Sayfaya Gir Android",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red.shade800,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text("Maybe Pop Kullanımı"),
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
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => GreenPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade900,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text("Push Replacament Kullanımı"),
            ),
          ],
        ),
      ),
    );
  }
}
