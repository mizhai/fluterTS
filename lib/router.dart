import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("文本TEXT"),
        ),
        body: Container(
            color: Colors.grey,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello world",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      height: 1.5,
                      fontFamily: "Courier",
                      background: new Paint()..color = Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                ),
                Text(
                  "Hello world! I'm Jack. " * 4,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Hello world",
                  textScaleFactor: 1.5,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(text: '首页'),
                  TextSpan(
                      text: 'http:wwww.baidu.com',
                      style: TextStyle(color: Colors.blue)),
                  // recognizer:_tapRecognizer
                ])),
                DefaultTextStyle(
                  //1.设置文本默认样式
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.start,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("hello world"),
                      Text("I am Jack"),
                      Text(
                        "I am Jack",
                        style: TextStyle(
                            inherit: false, //2.不继承默认样式
                            color: Colors.orange),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
