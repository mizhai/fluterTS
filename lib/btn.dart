import 'package:flutter/material.dart';

class Btnrouter extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
      content: new Text(
    "Hello World!",
    style: new TextStyle(fontSize: 30.0),
  ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("按钮页"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('按钮详情页')],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("RaisedButton"),
                  onPressed: () => {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog)
                      },
                )
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text("FlatButton"),
                  onPressed: () => {},
                )
              ],
            ),
            Row(
              children: <Widget>[
                OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: () => {},
                )
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () => {},
                ),
                Text('图标按钮')
              ],
            ),
            Row(
              children: <Widget>[Text('自定义按钮：')],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  highlightColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text('自定义按钮'),
                  onPressed: () => {},
                )
              ],
            )
          ],
        ));
  }
}
