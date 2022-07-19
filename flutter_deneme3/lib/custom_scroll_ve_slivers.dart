import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolBarOrnek extends StatelessWidget {
  const CollapsableToolBarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver App Bar"),
            backgroundColor: Colors.red,
            expandedHeight: 150,
            floating:
                true, //aşağıya kaydırınca toolbar gidiyor. flaoting yukarı kaydırmaya başladığında toolbarın geri gelmesini sağlıyor
            pinned:
                true, // toolbar flexibleSpaceBar hariç sabitleniyor (true iken).
            flexibleSpace: FlexibleSpaceBar(
              //title: Text("Flexible Title"), buranında title özelliği var. titleCenter: ile de merkeze alınıyor.
              background: Image.asset(
                "assets/images/tree.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                sabitListeElemanlari(),
              ),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunc,
                  childCount: 10),
            ),
          ),

          SliverFixedExtentList(
              delegate: SliverChildListDelegate(sabitListeElemanlari()),
              itemExtent: 100),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunc,
                  childCount: 20),
              itemExtent: 150),
          //sabit elemanlarla 1 satırda kaç eleman olacağını verdiğimiz grid türü
          SliverGrid(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
          //dinamik elemanlarla 1 satırda kaç eleman olacağını verdiğimiz grid türü.
          SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunc,
                childCount: 21),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
          //dinamik elemanlarla 1 satırdaki elemanın max genişliğini verdiğimiz grid türü.
          SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFunc,
                childCount: 6),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150),
          ),
        ],
      ),
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.lightBlue,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.pinkAccent,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.green,
        alignment: Alignment.center,
      ),
      Container(
        height: 150,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.limeAccent,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElemanUretenFunc(BuildContext context, int index) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        "${index + 1}. Dinamik Liste Elemanı",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      color: _rasgeleRenkUret(),
      alignment: Alignment.center,
    );
  }

  Color _rasgeleRenkUret() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
