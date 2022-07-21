import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme4/green_page.dart';
import 'package:flutter_deneme4/orange_page.dart';
import 'package:flutter_deneme4/red_page.dart';
import 'package:flutter_deneme4/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /* routes: {
        "/": (context) => AnaSayfa(),
        "/redPage": (context) => RedPage(),
        "/orangePage": (context) => OrangePage(),
      },
      // tanımlanmamış bir rota verildiğinde burası tetikleniyor.
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(
                  child: Text("404"),
                ),
              )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/redPage");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade600,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text("Push Named Kullanımı"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/yellowPage");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow.shade300,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "Push Named Kullanımı 2",
                style: TextStyle(color: Colors.red.shade600),
              ),
            ),
            _butonOlustur(context, "yellow", "Push Named Kullanımı 3",
                Colors.yellow.shade900),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed("/ogrenciListesi", arguments: 60);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "Liste Oluştur",
              ),
            ),
            _butonOlustur(
                context, "purple", "Mor Sayfaya Git", Colors.purple.shade500),
          ],
        ),
      ),
    );
  }

  // ElevatedButtonu dinamik olarak fonksiyonla oluşturma.
  ElevatedButton _butonOlustur(
      BuildContext context, String renk, String mesaj, Color argb) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/${renk}Page");
      },
      style: ElevatedButton.styleFrom(
        primary: argb,
        minimumSize: Size(250, 40),
        maximumSize: Size(250, 40),
      ),
      child: Text(mesaj),
    );
  }
}
