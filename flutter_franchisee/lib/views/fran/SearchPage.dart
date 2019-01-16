import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SearchPage();
  }
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("查询"),
      ),
      body: Center(
        child: Text("查询"),
      ),
    );
  }
}
