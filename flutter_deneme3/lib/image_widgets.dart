import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      "assets/images/tree.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade900,
                      child: CircleAvatar(
                        child: Text(
                          "E",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        backgroundImage: NetworkImage(_imgUrl),
                        foregroundColor: Colors.red,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
