import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AddPage();
  }
}

class _AddPage extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("添加"),
      ),
      body: Center(
        child: Text("添加"),
      ),
    );
  }
}
