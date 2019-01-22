import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/views/job_51/SearchTextInput.dart';

class JobView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _JobViewState();
  }
}

class _JobViewState extends State<JobView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        //解决高度溢出
        child: new ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 120.0,
            ),
            child: SearchTextInput()),
      ),
      drawer: homeDrawer(context),
    );
  }

  Widget homeDrawer(BuildContext context) {
    return new ListView(padding: const EdgeInsets.only(), children: <Widget>[
      _drawerHeader(context),
      new ClipRect(
        child: new ListTile(
          leading: new CircleAvatar(child: new Text("A")),
          title: new Text('Drawer item A'),
          onTap: () => {},
        ),
      ),
      new ListTile(
        leading: new CircleAvatar(child: new Text("B")),
        title: new Text('Drawer item B'),
        subtitle: new Text("Drawer item B subtitle"),
        onTap: () => {},
      ),
      new AboutListTile(
        icon: new CircleAvatar(child: new Text("Ab")),
        child: new Text("About"),
        applicationName: "Test",
        applicationVersion: "1.0",
        applicationIcon: new Image.asset(
          "images/ymj_jiayou.gif",
          width: 64.0,
          height: 64.0,
        ),
        applicationLegalese: "applicationLegalese",
        aboutBoxChildren: <Widget>[
          new Text("BoxChildren"),
          new Text("box child 2")
        ],
      ),
    ]);
  }

  Widget _drawerHeader(BuildContext context) {
    return new UserAccountsDrawerHeader(
//      margin: EdgeInsets.zero,
      accountName: new Text(
        "Alvin",
//        style: HStyle.titleNav(),
      ),
      accountEmail: new Text(
        "alvin198761@163.com",
//        style: HStyle.bodyWhite(),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: new AssetImage("assets/face.jpg"),
      ),
      onDetailsPressed: () {},
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage("assets/face.jpg"),
        ),
      ],
    );
  }
}
