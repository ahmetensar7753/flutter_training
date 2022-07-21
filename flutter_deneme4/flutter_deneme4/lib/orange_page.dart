import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orange Page"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Orange Page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "En Başa Dön",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == "/purplePage");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "Mora Geri Dön",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == "/");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "En Başa Dön",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    "/yellowPage", (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "Sarıyı ana sayfadan sonra ekle",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context,
                    "/greenPage"); //var olan sayfayı pop'luyor sonra yenisine gidiyor.
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(250, 40),
                maximumSize: Size(250, 40),
              ),
              child: Text(
                "Deneme",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
