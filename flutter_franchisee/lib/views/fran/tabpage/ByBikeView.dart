import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ByBikeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ByBikeViewState();
  }
}

class _ByBikeViewState extends State<ByBikeView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text("自行车"),
//      ),
      body: Center(
        child:Text("自行车"),
      ),
    );
  }
}
