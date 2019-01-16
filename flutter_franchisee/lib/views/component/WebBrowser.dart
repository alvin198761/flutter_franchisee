import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebBrowser extends StatelessWidget {
  final String title;
  final String url;

  WebBrowser({this.title, this.url});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      url: url,
    );
  }
}
