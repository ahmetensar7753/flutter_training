import 'package:flutter/material.dart';

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
          SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
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
}
