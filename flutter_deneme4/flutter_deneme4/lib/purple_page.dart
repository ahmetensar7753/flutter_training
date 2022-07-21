import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Page"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Purple Page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/orangePage");
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange.shade300,
              minimumSize: Size(250, 40),
              maximumSize: Size(250, 40),
            ),
            child: Text(
              "Turuncu Sayfaya Git",
            ),
          ),
        ],
      )),
    );
  }
}

/**/
