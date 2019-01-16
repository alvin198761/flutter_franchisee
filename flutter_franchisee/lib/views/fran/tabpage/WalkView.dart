import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalkView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _WalkViewState();
  }
}

class _WalkViewState extends State<WalkView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("步行"),
//      ),
      body: Center(
        child: Text("步行"),
      ),
    );
  }
}
