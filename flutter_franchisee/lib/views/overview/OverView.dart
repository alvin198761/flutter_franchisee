import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/sys/ThemeConfig.dart';
import 'package:flutter_franchisee/views/overview/NewsListView.dart';

class OverView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _OverViewState();
  }
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: getTheme(context),
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                            child: Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.phone,
                                size: 50,
                              ),
                              Text(
                                "我的代办",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
//                         ,)
                            ),
                        Card(
                            child: Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                size: 50,
                              ),
                              Text(
                                "我的客户",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
//                         ,
                            ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 5, bottom: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.timeline,
                                  size: 50,
                                ),
                                Text(
                                  "我的业绩",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
//                         ,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "内部动态",
                              style: TextStyle(color: Colors.deepOrangeAccent),
                            ),
                            IconButton(
                              icon: Icon(Icons.more,
                                  color: Colors.deepOrangeAccent),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    NewsListView()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
