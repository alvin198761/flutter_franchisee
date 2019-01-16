import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PlanViewState();
  }
}

class _PlanViewState extends State<PlanView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("计划"),
//      ),
      body: Center(
        child: Text("计划"),
      ),
    );
  }
}
