import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun Basıldı");
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text("textButton"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(
              Colors.yellow.withOpacity(0.5),
            ),
          ),
          icon: Icon(Icons.add),
          label: Text("Text button with icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.yellow,
          ),
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevated with Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 3),
          ),
          label: Text("Outlined with Icon"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          label: Text("Outlined with Icon"),
        ),
      ],
    );
  }
}
