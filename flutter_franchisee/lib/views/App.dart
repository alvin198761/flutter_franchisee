import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/sys/AppSystem.dart';
import 'package:flutter_franchisee/sys/RouterConfig.dart';
import 'package:flutter_franchisee/sys/ThemeConfig.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AppState();
  }
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: getRoutes(context),
      theme: getTheme(context),
      initialRoute: "/login",
    );
  }
}
