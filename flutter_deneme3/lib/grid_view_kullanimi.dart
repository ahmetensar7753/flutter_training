import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Başlık"),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue.shade800,
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(5.0, 4.0),
                  blurRadius: 5.0,
                ),
              ],
              //shape: BoxShape.circle,
              //color: Colors.blue[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/tree.jpeg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Manzara",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*GridView.extent(
        maxCrossAxisExtent: 200,
        primary: true,
        // scrollDirection: Axis.horizontal, kaydırma yönü yatay yapıyor.
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,

        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),*/

/*GridView.count(
        crossAxisCount: 2,
        primary: false,
        // scrollDirection: Axis.horizontal, kaydırma yönü yatay yapıyor.
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,

        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Selam Canım",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),*/
