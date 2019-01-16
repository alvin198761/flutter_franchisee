import 'package:flutter/material.dart';
import 'package:flutter_franchisee/sys/ThemeConfig.dart';
import 'package:flutter_franchisee/views/fran/tabpage/ByBikeView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/KITView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/KeepView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/PlanView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/RunView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/WalkView.dart';
import 'package:flutter_franchisee/views/fran/tabpage/YogaView.dart';

class Fran extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FranState();
  }
}

class _FranState extends State<Fran> {
  final List<Tab> _tabs = [
    Tab(text: "计划"),
    Tab(text: "健身"),
    Tab(text: "跑步"),
    Tab(text: "KIT"),
    Tab(text: "瑜伽"),
    Tab(text: "行走"),
    Tab(text: "骑行")
  ];

  final List<Widget> _tabView = [
    PlanView(),
    KeepView(),
    RunView(),
    KITView(),
    YogaView(),
    WalkView(),
    ByBikeView(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        theme: getTheme(context),
        home: Center(
          child: DefaultTabController(
              length: _tabs.length,
              child: Scaffold(
                appBar: AppBar(
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: _searchPressed,
                      tooltip: '查询',
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _addPressed,
                      tooltip: '添加',
                    )
                  ],
                  title: const Text('运动'),
                  bottom: new TabBar(
                    tabs: _tabs,
                    isScrollable: true,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                body: new TabBarView(children: _tabView),
              )),
        ));
  }

  void _searchPressed() {
    Navigator.pushNamed(context, "/fran/search");
  }

  void _addPressed() {
    Navigator.pushNamed(context, "/fran/add");
  }
}
