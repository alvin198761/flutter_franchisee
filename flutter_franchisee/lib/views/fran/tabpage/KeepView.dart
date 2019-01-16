import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeepView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _KeepViewState();
  }
}

class _KeepViewState extends State<KeepView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("健身"),
//      ),
      body: Center(
        child:  Text("健身"),
      ),
    );
  }
}
