import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/views/fran/Fran.dart';
import 'package:flutter_franchisee/views/job_51/JobView.dart';
import 'package:flutter_franchisee/views/my/My.dart';
import 'package:flutter_franchisee/views/overview/OverView.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _tabPageViews = [OverView(), Fran(),JobView(), My()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _tabPageViews.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('加盟商'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('51Job'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.person ),
              title: Text('我的'),
              backgroundColor: Colors.black12),
        ],
        currentIndex: _selectedIndex,
//        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
