import 'package:burclar_rehberi/burc_detay.dart';
import 'package:burclar_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 6,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ),
            );
          },
          leading: Image.asset(
            "images/" + listelenenBurc.kucukResim,
          ),
          title: Text(
            listelenenBurc.burcAd,
            style: myTextStyle.headline6,
          ),
          subtitle: Text(
            listelenenBurc.burcTarih,
            style: myTextStyle.subtitle1,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
