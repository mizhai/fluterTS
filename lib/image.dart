import 'package:flutter/material.dart';

class Imagerouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('图片页'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '图片页',
              textAlign: TextAlign.center
            ),
            Image(
              image: AssetImage("images/head.png"),
            ),
            Image.asset(
              "images/head.png",
              width: 200.0,
            ),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
