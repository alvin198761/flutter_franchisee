import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/sys/ThemeConfig.dart';

class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyState();
  }
}

class _MyState extends State<My> {
  final List<dynamic> items = [
    "111",
    "222",
    "333",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: getTheme(context),
      home: Scaffold(
        body: SingleChildScrollView(
          //解决高度溢出
          child: new ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 120.0,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 40, left: 10, right: 10),
              child: Center(
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        "assets/face.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "设置一下",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "设置一下",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "设置一下",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "设置一下",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _settingBuild(BuildContext context, int index) {
    return Text("123");
//    return Padding(
//      padding: EdgeInsets.all(2),
//      child: Text("---"),
////      child: Row(
////        children: <Widget>[
////          SizedBox(
////            height: 35,
////            width: 35,
////            child: Center(
////              child: Icon(items[index]["icon"]),
////            ),
////          ),
////          Text(items[index]["title"])
////        ],
//    );
  }
}
