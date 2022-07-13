// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://www.ilgincgercek.com/wp-content/uploads/2018/05/ilginc-araba.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.amber,
          title: Text("Başlık"),
        ),
        body: Container(
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("A"),
                  Text("H"),
                  Text("M"),
                  Text("E"),
                  Text("T"),
                ],
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.brown,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("fab'a tıklandı");
          },
          // ignore: sort_child_properties_last
          child: Icon(Icons.access_time_sharp, color: Colors.yellow),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Widget containerOrnek() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blue, width: 5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: NetworkImage(_img1),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(10, 20), blurRadius: 20),
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(0, -20),
                blurRadius: 10,
              ),
            ]),
        child: Text(
          "ahmet",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
