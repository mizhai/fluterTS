import 'package:flutter/material.dart';

class SchoolScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SchoolScreenState();
}

class SchoolScreenState extends State<SchoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SChool'),
      ),
       body: Container(
        child: Text('school'),
      ),
    );
  }
}
