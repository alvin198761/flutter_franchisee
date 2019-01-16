import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RunView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _RunViewState();
  }
}

class _RunViewState extends State<RunView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("跑步"),
//      ),
      body: Center(
        child: Text("跑步"),
      ),
    );
  }
}
