import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _RegisterViewState();
  }
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
      ),
      body: Center(
        child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            }),
      ),
    );
  }
}
